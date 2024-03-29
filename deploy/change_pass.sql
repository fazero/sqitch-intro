-- Deploy flipr:change_pass to pg
-- requires: users
-- requires: appschema
-- requires: pgcrypto

BEGIN;

-- XXX Add DDLs here.

CREATE OR REPLACE FUNCTION flipr.change_pass(
	nick TEXT,
	oldpass TEXT,
	newpass TEXT
) RETURNS BOOLEAN LANGUAGE plpgsql SECURITY DEFINER AS $$
BEGIN
	UPDATE flipr.users
	SET password = crypt($3, gen_salt('md5'))
	WHERE nickname = $1
		AND password = crypt($2, gen_salt('md5'));
	RETURN FOUND;
END;
$$;

COMMIT;
