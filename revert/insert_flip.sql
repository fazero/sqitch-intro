-- Revert flipr:insert_flip from pg

BEGIN;

-- XXX Add DDLs here.

DROP FUNCTION flipr.insert_flip(TEXT, TEXT);

COMMIT;
