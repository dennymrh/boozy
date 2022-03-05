-- Deploy boozy:create-drinks to pg

BEGIN;

CREATE TABLE drinks (
    drink_id serial PRIMARY KEY,
    name varchar ( 255) unique not null,
    type varchar (255) unique not null,
    sub_type varchar (255) unique,
    brand varchar (255) unique not null,
    volume int not null
    );

COMMIT;
