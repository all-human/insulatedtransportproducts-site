# Azure Migration Guide — insulatedtransportproducts.com (DNN 7.3.1)

## Overview

This document covers the full migration of the DotNetNuke 7.3.1 site to Azure.

**Azure resources (resource group: `signode-rg`, location: North Europe)**

| Resource | Name | Status | Purpose |
|---|---|---|---|
| App Service (Windows) | TBD | Not created | Host the ASP.NET WebForms app |
| Azure SQL Server | `itp-sql-server` | ✅ Created | Hosts the DNN database |
| Azure SQL Database | `insulatedtransportproducts` | ✅ Created | DNN database (Basic tier, 2GB) |
| Storage Account | `itpdocs` | ✅ Created | Video files (container: `videos`) |

**Azure SQL connection details:**
- Server: `itp-sql-server.database.windows.net`
- Database: `insulatedtransportproducts`
- Admin user: `itpadmin`
- Password: stored securely — do not commit to repo

**GitHub repo:** https://github.com/all-human/insulatedtransportproducts-site

---

## Step 1 — Database Migration ✅ In Progress

### What we found
The `App_Data/Database.mdf` is SQL Server Compact but the live site actually used a full SQL Server (`DNN2SQLV3` on the old hosting). The complete DNN schema is available in `Providers/DataProviders/SqlDataProvider/` — no backup from the hosting provider needed.

### What was done
1. ✅ Azure SQL Server `itp-sql-server` created in `signode-rg` (North Europe)
2. ✅ Database `insulatedtransportproducts` created (Basic tier)
3. ✅ Firewall rules set (local machine + Azure services)
4. ✅ `sqlpackage` installed via `dotnet tool install -g microsoft.sqlpackage`
5. ⏳ DNN schema being installed via `Scripts/install-dnn-schema-azure.ps1`

### To re-run schema installation
```powershell
cd <site-root>
powershell -ExecutionPolicy Bypass -File Scripts/install-dnn-schema-azure.ps1
```

The script runs all scripts in this order:
1. `InstallCommon.sql` — ASP.NET common tables
2. `InstallMembership.sql` — membership tables
3. `InstallRoles.sql` — roles tables
4. `InstallProfile.sql` — profile tables
5. `DotNetNuke.Schema.SqlDataProvider` — core DNN tables
6. `DotNetNuke.Data.SqlDataProvider` — stored procedures + seed data
7. All `XX.XX.XX.SqlDataProvider` version upgrade scripts in order (up to 7.3.3)

### After schema is installed
Update `web.config` connection string:
```xml
<add name="SiteSqlServer"
     connectionString="Server=itp-sql-server.database.windows.net;Database=insulatedtransportproducts;User Id=itpadmin;Password=ITP@Azure2024!;Encrypt=True;TrustServerCertificate=False;"
     providerName="System.Data.SqlClient" />
```

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
