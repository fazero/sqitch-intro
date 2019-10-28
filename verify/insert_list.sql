-- Verify flipr:insert_list on pg

BEGIN;

-- XXX Add verifications here.

SELECT has_function_privilege('flipr.insert_list(text, text, text)', 'execute');

ROLLBACK;
