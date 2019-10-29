-- Verify flipr:pgcrypto on pg

BEGIN;

-- XXX Add verifications here.

SELECT 1/count(*) FROM pg_extension WHERE extname = 'pgcrypto';
SELECT has_function_privilege('crypt(TEXT, TEXT)', 'execute');
SELECT has_function_privilege('gen_salt(TEXT)', 'execute');

ROLLBACK;
