# Azure Migration Guide — insulatedtransportproducts.com (DNN 7.3.1)

## Overview

This document covers the full migration of the DotNetNuke 7.3.1 site to Azure, including a new CMS instance for content management.

**Azure resources (resource group: `signode-rg`, location: North Europe)**

### DNN Site Resources

| Resource | Name | Status | Purpose |
|---|---|---|---|
| App Service (Windows) | TBD | Not created | Host the ASP.NET WebForms app |
| Azure SQL Server | `itp-sql-server` | ✅ Created | Hosts all databases |
| Azure SQL Database | `insulatedtransportproducts` | ✅ Created | DNN database — 144 tables, 769 stored procs |
| Storage Account | `itpdocs` | ✅ Created | Shared storage for all assets |
| Blob container | `videos` | ✅ Created | 47 video files |

### CMS Instance Resources (all-human CMS pilot — ITP prod)

| Resource | Name | Status | Purpose |
|---|---|---|---|
| SQL Database | `cms-itp-prod` on `itp-sql-server` | ✅ Created | CMS database (Serverless GP Gen5) |
| App Service Plan | `asp-cms-ah-itp` | ✅ Created | Linux B1 |
| App Service | `app-cms-ah-itp-prod` | ✅ Created | CMS admin + Delivery API |
| Key Vault | `kv-cms-ah-itp` | ✅ Created | Secrets (DB conn string, JWT) |
| Blob container | `cms-itp-prod` in `itpdocs` | ✅ Created | CMS media assets |

**CMS URL:** https://app-cms-ah-itp-prod.azurewebsites.net

**Key Vault secrets:**
- `DbConnectionString-itp-prod` — Azure SQL connection string
- `JwtSecret-itp` — JWT signing secret

**Azure SQL connection details:**
- Server: `itp-sql-server.database.windows.net`
- DNN Database: `insulatedtransportproducts` / Admin: `itpadmin`
- CMS Database: `cms-itp-prod` / Admin: `itpadmin`

**GitHub repo:** https://github.com/all-human/insulatedtransportproducts-site

---

## Step 1 — DNN Database Migration ✅ Complete

### What we found
The `App_Data/Database.mdf` is SQL Server Compact but the live site used a full SQL Server (`DNN2SQLV3` on old hosting). The complete DNN schema is in `Providers/DataProviders/SqlDataProvider/` — no backup from the hosting provider needed.

### What was done
1. ✅ Azure SQL Server `itp-sql-server` created in `signode-rg` (North Europe)
2. ✅ Database `insulatedtransportproducts` created (Basic tier, 2GB)
3. ✅ Firewall rules set (local machine + Azure services)
4. ✅ `sqlpackage` installed via `dotnet tool install -g microsoft.sqlpackage`
5. ✅ DNN schema installed via `Scripts/install-dnn-schema-azure.ps1` — **144 tables, 769 stored procedures**
6. ✅ `web.config` updated to point at Azure SQL

### To re-run schema installation
```powershell
cd <site-root>
powershell -ExecutionPolicy Bypass -File Scripts/install-dnn-schema-azure.ps1
```

### web.config connection string (already updated)
```xml
<add name="SiteSqlServer"
     connectionString="Server=itp-sql-server.database.windows.net;Database=insulatedtransportproducts;User Id=itpadmin;Password=ITP@Azure2024!;Encrypt=True;TrustServerCertificate=False;"
     providerName="System.Data.SqlClient" />
```

---

## Step 1b — CMS Instance Setup ✅ Complete

CMS instance deployed following `SCALING.md` from the CMS prototype project.

### What was done
1. ✅ Key Vault `kv-cms-ah-itp` created (RBAC mode)
2. ✅ SQL Database `cms-itp-prod` created on shared `itp-sql-server`
3. ✅ App Service Plan `asp-cms-ah-itp` created (Linux B1)
4. ✅ App Service `app-cms-ah-itp-prod` created (.NET 9)
5. ✅ Managed identity enabled on App Service
6. ✅ KV Secrets User role granted to App Service managed identity
7. ✅ Storage Blob Data Contributor role granted to App Service managed identity
8. ✅ Blob container `cms-itp-prod` created in `itpdocs`
9. ✅ Secrets stored in Key Vault (DB connection string, JWT secret)
10. ✅ App Service settings configured (storage, JWT, environment)
11. ⏳ EF Core migrations running
12. ⬜ CMS build + deploy pending

### CMS App Service settings
| Setting | Value |
|---|---|
| `Storage__Type` | `azure` |
| `Storage__Azure__ContainerUrl` | `https://itpdocs.blob.core.windows.net/cms-itp-prod` |
| `ASPNETCORE_ENVIRONMENT` | `Production` |
| Connection string | KV ref → `DbConnectionString-itp-prod` |
| JWT secret | KV ref → `JwtSecret-itp` |

---

## Step 2 — Video Files ✅ Complete

47 video files uploaded to Azure Blob Storage.

- Storage account: `itpdocs` (signode-rg, North Europe)
- Container: `videos` (public blob access)
- Base URL: `https://itpdocs.blob.core.windows.net/videos/`

### Migrate video paths in database
After the schema install completes, run:

```
Scripts/migrate-videos-to-azure-blob.sql
```

What it updates:
- `UVG_Video.VideoPath` — `/Portals/0/UltraVideoGallery/...` → Azure Blob URL
- `UVG_Video.H264VideoPath` — same
- `UVG_Library.VideoPath` — same
- `EasyGalleryPictures` — inspect column name first, then uncomment and run

Run order:
1. Run all `SELECT` preview statements first
2. Run `UVG_Video` UPDATE statements
3. Run `UVG_Library` UPDATE statement
4. Inspect `EasyGalleryPictures` columns, uncomment and run that UPDATE
5. Run the final verification query (should return 0 rows)

---

## Step 3 — web.config Changes

Before deploying, update `web.config`:

| Setting | Change |
|---|---|
| Connection string | `Server=itp-sql-server.database.windows.net;Database=insulatedtransportproducts;User Id=itpadmin;Password=...;Encrypt=True;` |
| `machineKey` validationKey/decryptionKey | Regenerate — do not reuse current keys |
| Temp path `V:\vhosts\...` | Change to `~/Temp` |
| Error page `/500.html` | Fix or remove `V:\` reference |
| `<compilation debug="true">` | Set to `false` for production |

Store secrets as Azure App Service Application Settings, not in `web.config` directly.

---

## Step 4 — Azure App Service Setup

1. Create App Service (Windows, .NET 4.x) in `signode-rg`
2. Set Application Settings:
   - `DB_CONNECTION_STRING`
   - `MACHINEKEY_VALIDATIONKEY`
   - `MACHINEKEY_DECRYPTIONKEY`
3. Enable persistent storage for `Portals/` user uploads
4. Verify IIS URL Rewrite module is enabled (needed for `fmrewrites.config`)

---

## Step 5 — Deploy from GitHub

A GitHub Actions workflow deploys to Azure App Service on push to `master`.

Workflow file: `.github/workflows/deploy.yml` (to be created)

```yaml
name: Deploy to Azure

on:
  push:
    branches: [master]

jobs:
  deploy:
    runs-on: windows-latest
    steps:
      - uses: actions/checkout@v4

      - name: Deploy to Azure App Service
        uses: azure/webapps-deploy@v3
        with:
          app-name: ${{ secrets.AZURE_APP_NAME }}
          publish-profile: ${{ secrets.AZURE_PUBLISH_PROFILE }}
          package: .
```

**GitHub Secrets required:**

| Secret | Value |
|---|---|
| `AZURE_APP_NAME` | App Service name |
| `AZURE_PUBLISH_PROFILE` | Downloaded from Azure Portal → App Service → Publish Profile |

---

## Step 6 — Post-Deploy Checklist

- [ ] Schema installation completes without errors
- [ ] Run `Scripts/migrate-videos-to-azure-blob.sql` against Azure SQL
- [ ] Update `web.config` connection string to Azure SQL
- [ ] DNN loads in browser and upgrade check completes on first load
- [ ] Update `PortalAlias` in database to match new domain/Azure URL
- [ ] Update `SiteUrls.config` primary domain
- [ ] Test UltraVideoGallery — videos load from Azure Blob
- [ ] Test EasyDNNGallery — videos/images load correctly
- [ ] Verify URL rewriting works (`fmrewrites.config` rules)
- [ ] Point custom domain + SSL in App Service
- [ ] Rotate database credentials (currently exposed in public GitHub repo)
- [ ] Regenerate MachineKey values

---

## Notes

- DNN 7.3.1 is EOL — consider upgrading to DNN 9.x post-migration
- Third-party module licenses (EasyDNNGallery, UltraVideoGallery) may need to be re-issued for the new domain/server
- `web.config` is committed to the public repo and contains live credentials — rotate immediately
- `sqlpackage` is installed globally: `dotnet tool install -g microsoft.sqlpackage`
