-- =============================================================================
-- Migrate video file paths to Azure Blob Storage (itpdocs)
-- Run this AFTER migrating the database to Azure SQL.
--
-- Azure Blob base URL: https://itpdocs.blob.core.windows.net/videos/
-- Local path prefixes being replaced:
--   /Portals/0/UltraVideoGallery/
--   /Portals/0/EasyGalleryImages/
--   /Portals/0/GravityImages/
--
-- NOTE: {objectQualifier} is typically empty ("") on standard DNN installs.
--       If your DNN was configured with an object qualifier, replace
--       the table name prefix accordingly (e.g. "dnn_UVG_Video").
-- =============================================================================

-- Preview changes before running UPDATE statements (run SELECTs first)

-- =============================================================================
-- 1. UltraVideoGallery: UVG_Video.VideoPath
--    Stores paths like: /Portals/0/UltraVideoGallery/JFaretta/filename.mp4
-- =============================================================================

-- Preview:
SELECT ItemId, Title, VideoPath, H264VideoPath
FROM UVG_Video
WHERE VideoPath LIKE '/Portals/0/UltraVideoGallery/%'
   OR H264VideoPath LIKE '/Portals/0/UltraVideoGallery/%';

-- Update VideoPath:
UPDATE UVG_Video
SET VideoPath = 'https://itpdocs.blob.core.windows.net/videos/' +
                SUBSTRING(VideoPath, LEN('/Portals/0/') + 1, LEN(VideoPath))
WHERE VideoPath LIKE '/Portals/0/UltraVideoGallery/%';

-- Update H264VideoPath:
UPDATE UVG_Video
SET H264VideoPath = 'https://itpdocs.blob.core.windows.net/videos/' +
                    SUBSTRING(H264VideoPath, LEN('/Portals/0/') + 1, LEN(H264VideoPath))
WHERE H264VideoPath LIKE '/Portals/0/UltraVideoGallery/%';

-- =============================================================================
-- 2. UltraVideoGallery: UVG_Library (thumbnail/path overrides at library level)
-- =============================================================================

-- Preview:
SELECT LibraryId, Name, VideoPath
FROM UVG_Library
WHERE VideoPath LIKE '/Portals/0/UltraVideoGallery/%';

-- Update:
UPDATE UVG_Library
SET VideoPath = 'https://itpdocs.blob.core.windows.net/videos/' +
                SUBSTRING(VideoPath, LEN('/Portals/0/') + 1, LEN(VideoPath))
WHERE VideoPath LIKE '/Portals/0/UltraVideoGallery/%';

-- =============================================================================
-- 3. EasyDNNGallery: EasyGalleryPictures
--    Stores video files uploaded via EasyDNNGallery in EasyGalleryImages/
--    Column name may be FileName or FilePath — check with the SELECT first.
-- =============================================================================

-- Inspect the table structure first:
SELECT TOP 5 * FROM EasyGalleryPictures;

-- Update (adjust column name if needed after inspecting above):
-- UPDATE EasyGalleryPictures
-- SET FileName = 'https://itpdocs.blob.core.windows.net/videos/' +
--               SUBSTRING(FileName, LEN('/Portals/0/') + 1, LEN(FileName))
-- WHERE FileName LIKE '/Portals/0/EasyGalleryImages/%'
--   AND FileName LIKE '%.mp4'
--    OR FileName LIKE '%.mov'
--    OR FileName LIKE '%.flv';

-- =============================================================================
-- 4. Verify — confirm no local video paths remain
-- =============================================================================

SELECT 'UVG_Video' AS TableName, ItemId AS Id, VideoPath AS Path
FROM UVG_Video
WHERE VideoPath LIKE '/Portals/0/%'
UNION ALL
SELECT 'UVG_Video H264', ItemId, H264VideoPath
FROM UVG_Video
WHERE H264VideoPath LIKE '/Portals/0/%'
UNION ALL
SELECT 'UVG_Library', LibraryId, VideoPath
FROM UVG_Library
WHERE VideoPath LIKE '/Portals/0/%';
-- Add EasyGalleryPictures query here once column name is confirmed.
