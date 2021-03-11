ALTER TABLE PRODUCTS(
    CREATE INDEX price_index ON PRODUCTS(price);
    CREATE INDEX price_currency_index ON PRODUCTS(price_currency);
)

ALTER TABLE CUSTOMERS(
    CREATE INDEX name_index ON CUSTOMERS(name);
)

ALTER TABLE CARTS(
    CREATE INDEX created_at_index ON CARTS(created_at);
)
