-- Deploy flipr:pgcrypto to pg
-- requires: appschema

BEGIN;

-- XXX Add DDLs here.
 
CREATE EXTENSION pgcrypto;

COMMIT;
