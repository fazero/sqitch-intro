-- Verify flipr:lists on pg

BEGIN;

-- XXX Add verifications here.

SELECT nickname, name, description, created_at
  FROM flipr.lists
 WHERE FALSE;

ROLLBACK;
