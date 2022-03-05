-- Deploy boozy:create-stores to pg

BEGIN;

CREATE TABLE stores (
    store_id bigserial PRIMARY KEY,
    name varchar (255) not null,
    address varchar (255) unique not null,
    phone_number varchar (255) unique not null
    );

COMMIT;
