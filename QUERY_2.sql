SELECT PRODUCTS.title, PRODUCTS.price, PRODUCTS.price_currency, CARTS.created_at FROM CARTS 
INNER JOIN PRODUCTS ON PRODUCTS.product_id = carts.product_id
WHERE PRODUCTS.product_id = 1 
AND (CARTS.created_at between to_date('2021-01-01 00:00:00', 'YYYY-DD-MM HH24:MI:SS') and sysdate);

SELECT CUSTOMERS.name, CUSTOMERS.address, PRODUCTS.title, CARTS.created_at FROM CARTS 
INNER JOIN  PRODUCTS ON PRODUCTS.product_id = CARTS.product_id 
INNER JOIN CUSTOMERS ON CUSTOMERS.customer_id = CARTS.customer_id
WHERE CUSTOMERS.customer_id = 15 AND PRODUCTS.product_id = 71;