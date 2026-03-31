# Azure Migration Guide — insulatedtransportproducts.com (DNN 7.3.1)

## Overview

This document covers the full migration of the DotNetNuke 7.3.1 site to Azure.

**Azure resources (resource group: `signode-rg`, location: North Europe)**

| Resource | Name | Purpose |
|---|---|---|
| App Service (Windows) | TBD | Host the ASP.NET WebForms app |
| Azure SQL Database | TBD | Replace SQL Server Compact |
| Storage Account | `itpdocs` | Video files (container: `videos`) |

**GitHub repo:** https://github.com/all-human/insulatedtransportproducts-site

---

## Step 1 — Database Migration

The site uses SQL Server Compact (`App_Data/Database.mdf`). Azure SQL does not support SQL CE.

1. Install SQL Server Express locally
2. Use the [SQL CE to SQL Server migration tool](https://sqlcetoolbox.codeplex.com/) or SSMS to migrate the schema and data
3. Run DNN's built-in data provider upgrade if prompted
4. Export to `.bacpac` via SSMS (`Tasks → Export Data-tier Application`)
5. Create an Azure SQL Database in `signode-rg`
6. Import the `.bacpac` (`Tasks → Import Data-tier Application`)
7. Update the connection string in `web.config` (see Step 3)

---

## Step 2 — Migrate Video Paths to Azure Blob Storage

Videos are stored in `itpdocs` storage account, container `videos`.

**Base URL:** `https://itpdocs.blob.core.windows.net/videos/`

After the database is on Azure SQL, run the script at:

```
Scripts/migrate-videos-to-azure-blob.sql
```

### What the script does

- Updates `UVG_Video.VideoPath` — replaces `/Portals/0/UltraVideoGallery/...` with the Azure Blob URL
- Updates `UVG_Video.H264VideoPath` — same replacement
- Updates `UVG_Library.VideoPath` — same replacement
- Includes a preview SELECT for `EasyGalleryPictures` (column name must be confirmed before running)
- Ends with a verification query that should return 0 rows on success

### Run order

1. Run all `SELECT` preview statements first
2. Run `UVG_Video` UPDATE statements
3. Run `UVG_Library` UPDATE statement
4. Inspect `EasyGalleryPictures` columns, then uncomment and run that UPDATE
5. Run the final verification query

---

## Step 3 — web.config Changes

Before deploying, update `web.config`:

| Setting | Change |
|---|---|
| Connection string | Point to Azure SQL Database |
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

A GitHub Actions workflow deploys to Azure App Service on push to `main`.

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

- [ ] DNN upgrade check completes in browser on first load
- [ ] Update `PortalAlias` in database to match new domain/Azure URL
- [ ] Update `SiteUrls.config` primary domain
- [ ] Test UltraVideoGallery — videos load from Azure Blob
- [ ] Test EasyDNNGallery — videos/images load correctly
- [ ] Verify URL rewriting works (check `fmrewrites.config` rules)
- [ ] Point custom domain + SSL in App Service
- [ ] Rotate database credentials (currently exposed in public GitHub repo)
- [ ] Regenerate MachineKey values

---

## Notes

- DNN 7.3.1 is EOL — consider upgrading to DNN 9.x post-migration
- Third-party module licenses (EasyDNNGallery, UltraVideoGallery) may need to be re-issued for the new domain/server
- `web.config` is committed to the public repo and contains live credentials — rotate immediately
