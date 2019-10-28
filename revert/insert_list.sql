-- Revert flipr:insert_list from pg

BEGIN;

-- XXX Add DDLs here.

DROP FUNCTION flipr.insert_list(TEXT, TEXT, TEXT);

COMMIT;
