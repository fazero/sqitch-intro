-- Deploy flipr:delete_flip to pg
-- requires: flips
-- requires: appschema

BEGIN;

-- XXX Add DDLs here.

CREATE OR REPLACE FUNCTION flipr.delete_flip(
	flip_id BIGINT
) RETURNS BOOLEAN LANGUAGE plpgsql SECURITY DEFINER AS $$
BEGIN
	DELETE FROM flipr.flips WHERE id = flip_id;
	RETURN FOUND;
END;
$$;

COMMIT;
