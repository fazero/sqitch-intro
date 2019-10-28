-- Deploy flipr:lists to pg
-- requires: appschema
-- requires: users

BEGIN;

-- XXX Add DDLs here.

SET client_min_messages = 'warning';

CREATE TABLE flipr.lists (
    nickname    TEXT        NOT NULL REFERENCES flipr.users(nickname),
    name        TEXT        NOT NULL DEFAULT '',
    description TEXT        NOT NULL DEFAULT '',
    created_at  TIMESTAMPTZ NOT NULL DEFAULT clock_timestamp()
);

COMMIT;
