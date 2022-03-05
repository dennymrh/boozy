-- Revert boozy:create-drinks from pg

BEGIN;

DROP TABLE if exists drinks;

COMMIT;
