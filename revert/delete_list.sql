-- Revert flipr:delete_list from pg

BEGIN;

-- XXX Add DDLs here.

DROP FUNCTION flipr.delete_list(TEXT, TEXT);

COMMIT;
