-- Deploy boozy:create-inventory to pg

BEGIN;

CREATE TABLE inventory (
    inventory_id bigserial PRIMARY KEY,
    store_id BIGINT not null,
    drink_id BIGINT not null,
    stock int not null,
    FOREIGN KEY (store_id)
        REFERENCES stores (store_id),
    FOREIGN KEY (drink_id)
        REFERENCES drinks (drink_id)
    );

COMMIT;
