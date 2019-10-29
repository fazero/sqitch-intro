-- Revert flipr:pgcrypto from pg

BEGIN;

-- XXX Add DDLs here.

DROP EXTENSION pgcrypto;

COMMIT;
