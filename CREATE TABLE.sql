CREATE TABLE PRODUCTS(
    product_id int NOT NULL PRIMARY KEY,
    title varchar(255) NOT NULL,
    price float(2) NOT NULL,
    price_currency char(3) NOT NULL,
    stock int NOT NULL
);

CREATE TABLE CUSTOMERS(
    customer_id int NOT NULL PRIMARY KEY,
    name varchar(255) NOT NULL,
    email varchar(255),
    phone_number varchar(255),
    address varchar(255)
);

CREATE TABLE CARTS(
    cart_id int NOT NULL PRIMARY KEY,
    product_id int REFERENCES PRODUCTS(product_id),
    customer_id int REFERENCES CUSTOMERS(customer_id),
    created_at date
);