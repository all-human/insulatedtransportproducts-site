-- Reset DNN admin password
-- Run this against insulatedtransportproducts on itp-sql-server.database.windows.net
-- New password will be: Admin1234!
--
-- DNN uses SHA1 hashing with a salt stored in aspnet_Membership.
-- The easiest approach is to find the admin user and update via DNN's
-- built-in password reset mechanism by setting IsLockedOut = 0 and
-- flagging MustChangePassword, OR by setting a known hash.
--
-- This script sets password to: Admin1234!
-- Hash is SHA1("Admin1234!" + salt) — we replace with a known salt+hash pair.

-- Step 1: See who the admin users are
SELECT u.UserName, u.Email, up.IsDeleted, up.IsSuperUser
FROM Users up
JOIN aspnet_Users u ON up.Username = u.UserName
WHERE up.IsSuperUser = 1;

-- Step 2: Unlock any locked-out admin accounts
UPDATE am
SET am.IsLockedOut = 0,
    am.FailedPasswordAttemptCount = 0,
    am.LastLockoutDate = '1754-01-01'
FROM aspnet_Membership am
JOIN aspnet_Users au ON am.UserId = au.UserId
JOIN Users u ON u.Username = au.UserName
WHERE u.IsSuperUser = 1;

-- Step 3: Reset password to "Admin1234!"
-- Salt: "AAAAAAAAAAAAAAAAAAAAAA==" (24 base64 chars = 16 bytes of zeros)
-- Hash: SHA1 of (password + salt bytes) in DNN format
UPDATE aspnet_Membership
SET Password = 'qlv8BSETZPY06pdFiELOaaNYaM0=',
    PasswordSalt = 'AAAAAAAAAAAAAAAAAAAAAA==',
    PasswordFormat = 1,
    LastPasswordChangedDate = GETDATE(),
    IsLockedOut = 0,
    FailedPasswordAttemptCount = 0
WHERE UserId IN (
    SELECT au.UserId
    FROM aspnet_Users au
    JOIN Users u ON u.Username = au.UserName
    WHERE u.IsSuperUser = 1
);

-- Step 4: Verify
SELECT au.UserName, am.Email, am.IsLockedOut, am.LastLoginDate
FROM aspnet_Membership am
JOIN aspnet_Users au ON am.UserId = au.UserId
JOIN Users u ON u.Username = au.UserName
WHERE u.IsSuperUser = 1;
