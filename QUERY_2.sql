SELECT PRODUCTS.title, CARTS.created_at FROM PRODUCTS, CARTS
WHERE PRODUCTS.product_id = 56 AND (CARTS.created_at between to_date('2021-01-01 00:00:00', 'YYYY-DD-MM HH24:MI:SS') and sysdate);

SELECT CUSTOMERS.name, CUSTOMERS.address, PRODUCTS.title, CARTS.created_at FROM CUSTOMERS, PRODUCTS, CARTS
WHERE CUSTOMERS.customer_id = 15 AND PRODUCTS.product_id = 80;
