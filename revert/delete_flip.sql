-- Revert flipr:delete_flip from pg

BEGIN;

-- XXX Add DDLs here.

DROP FUNCTION flipr.delete_flip(BIGINT);

COMMIT;
