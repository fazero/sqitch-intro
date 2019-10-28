-- Revert flipr:lists from pg

BEGIN;

-- XXX Add DDLs here.

DROP TABLE flipr.lists;

COMMIT;
