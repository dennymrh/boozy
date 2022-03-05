-- Revert boozy:create-stores from pg

BEGIN;

DROP TABLE if exists stores;

COMMIT;
