-- add index to table PRODUCTS 
CREATE INDEX price_index ON PRODUCTS(price);
CREATE INDEX price_currency_index ON PRODUCTS(price_currency);

-- add index to table CUSTOMERS
CREATE INDEX name_index ON CUSTOMERS(name);

-- add index to table CARTS
CREATE INDEX created_at_index ON CARTS(created_at);
