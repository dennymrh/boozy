-- Revert boozy:create-inventory from pg

BEGIN;

DROP TABLE if exists inventory;

COMMIT;
