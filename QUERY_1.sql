SELECT * FROM PRODUCTS
WHERE price < 1000

SELECT * FROM CUSTOMERS, CARTS
WHERE CUSTOMERS.name = 'Kit McLese'

SELECT CUSTOMERS.name, CUSTOMERS.address, PRODUCTS.title, CARTS.created_at FROM CUSTOMERS, PRODUCTS, CARTS
WHERE CUSTOMERS.name = 'Ally Battyll'
