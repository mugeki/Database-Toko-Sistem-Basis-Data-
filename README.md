# INDEXING PROJECT 1

---
- [Tugas 1](#tugas1)
  - [Database Model](#model)
  - [query 1 (non-key 1 tabel)](#query1)
  - [query 2 (non-key 2 tabel)](#query2)
  - [query 3 (non-key 3 tabel)](#query3)
  - [query 4 (key 2 tabel)](#query4)
  - [query 5 (key 3 tabel)](#query5)
- [Tugas 2](#tugas2)
  - [query 1 with index (non-key 1 tabel)](#query1index)
  - [query 2 with index (non-key 2 tabel)](#query2index)
  - [query 3 with index (non-key 3 tabel)](#query3index)
  - [query 4 with index (key 2 tabel)](#query4index)
  - [query 5 with index (key 3 tabel)](#query5index)

KELOMPOK :

-   ARFAN JADULHAQ - 1301194277
-   MUCHAMMAD ALFI KAROM - 1301190363
-   MUHAMAD ELANG RAMADHAN - 1301190458

---

## Tugas 1<a name="tugas1"></a> ##
Pada tugas ini kami membuat 3 tabel beserta isinya dan query untuk menampilkan data

> **Database Model<a name="model"></a>**

![Database Model](https://user-images.githubusercontent.com/48755707/110774030-f0fd5300-828f-11eb-8c33-ab2b8534721f.png)

> **query 1 (non-key 1 tabel)<a name="query1"></a>**

```sql
SELECT * FROM PRODUCTS
WHERE price < 1000 AND price_currency = 'USD';
```

![query 1 (non-key 1 tabel)](https://user-images.githubusercontent.com/48755707/110773915-d62ade80-828f-11eb-85e3-9ce4027b6122.png)

> **query 2 (non-key 2 tabel)<a name="query2"></a>**

```sql
SELECT * FROM CUSTOMERS, CARTS
WHERE CUSTOMERS.name = 'Kit McLese';
```

![query 2 (non-key 2 tabel](https://user-images.githubusercontent.com/48755707/110774098-02def600-8290-11eb-9d4c-21aa7f9070be.png)

> **query 3 (non-key 3 tabel)<a name="query3"></a>**

```sql
SELECT CUSTOMERS.name, CUSTOMERS.address, PRODUCTS.title, CARTS.created_at FROM CUSTOMERS, PRODUCTS, CARTS
WHERE CUSTOMERS.name = 'Ally Battyll';
```

![query 3 (non-key 3 tabel)](https://user-images.githubusercontent.com/48755707/110774165-15592f80-8290-11eb-92ee-c73a7c6ec674.png)

> **query 4 (key 2 tabel)<a name="query4"></a>**

```sql
SELECT PRODUCTS.title, CARTS.created_at FROM PRODUCTS, CARTS
WHERE PRODUCTS.product_id = 56 AND (CARTS.created_at between to_date('2021-01-01 00:00:00', 'YYYY-DD-MM HH24:MI:SS') and sysdate);
```

![query 4 (key 2 tabel)](https://user-images.githubusercontent.com/48755707/110774214-230eb500-8290-11eb-8cab-514f4d2098bf.png)

> **query 5 (key 3 tabel)<a name="query5"></a>**

```sql
SELECT CUSTOMERS.name, CUSTOMERS.address, PRODUCTS.title, CARTS.created_at FROM CUSTOMERS, PRODUCTS, CARTS
WHERE CUSTOMERS.customer_id = 15 AND PRODUCTS.product_id = 80;
```

![query 5 (key 3 tabel)](https://user-images.githubusercontent.com/48755707/110774260-2efa7700-8290-11eb-8d7d-259c1cda776f.png)

## Tugas 2<a name="tugas2"></a> ##
Menambahkan Index
- column price dan price_currency di tabel PRODUCTS
- column name di tabel CUSTOMERS
- column creaed_at di tabel CARTS

```sql
-- add index to table PRODUCTS 
CREATE INDEX price_index ON PRODUCTS(price);
CREATE INDEX price_currency_index ON PRODUCTS(price_currency);

-- add index to table CUSTOMERS
CREATE INDEX name_index ON CUSTOMERS(name);

-- add index to table CARTS
CREATE INDEX created_at_index ON CARTS(created_at);
```

> **query 1 with index (non-key 1 tabel)<a name="query1index">**

```sql
SELECT * FROM PRODUCTS
WHERE price < 1000 AND price_currency = 'USD';
```

![query 1 with index (non-key 1 tabel)](https://user-images.githubusercontent.com/48755707/110774303-3caffc80-8290-11eb-8e93-86c4c0476eef.png)

> **query 2 with index (non-key 2 tabel)<a name="query2index">**

```sql
SELECT * FROM CUSTOMERS, CARTS
WHERE CUSTOMERS.name = 'Kit McLese';
```

![query 2 with index (non-key 2 tabel)](https://user-images.githubusercontent.com/48755707/110774339-476a9180-8290-11eb-8598-72175c5a42af.png)

> **query 3 with index (non-key 3 tabel)<a name="query3index">**

```sql
SELECT CUSTOMERS.name, CUSTOMERS.address, PRODUCTS.title, CARTS.created_at FROM CUSTOMERS, PRODUCTS, CARTS
WHERE CUSTOMERS.name = 'Ally Battyll';
```

![query 3 with index (non-key 3 tabel)](https://user-images.githubusercontent.com/48755707/110774388-53565380-8290-11eb-997b-e4a011c75c66.png)

> **query 4 with index (key 2 tabel)<a name="query4index">**

```sql
SELECT PRODUCTS.title, CARTS.created_at FROM PRODUCTS, CARTS
WHERE PRODUCTS.product_id = 56 AND (CARTS.created_at between to_date('2021-01-01 00:00:00', 'YYYY-DD-MM HH24:MI:SS') and sysdate);
```

![query 4 with index (key 2 tabel)](https://user-images.githubusercontent.com/48755707/110774421-5ea97f00-8290-11eb-9f02-26d3803f8cb2.png)

> **query 5 with index (key 3 tabel)<a name="query5index">**

```sql
SELECT CUSTOMERS.name, CUSTOMERS.address, PRODUCTS.title, CARTS.created_at FROM CUSTOMERS, PRODUCTS, CARTS
WHERE CUSTOMERS.customer_id = 15 AND PRODUCTS.product_id = 80;
```

![query 5 with index (key 3 tabel)](https://user-images.githubusercontent.com/48755707/110774459-6832e700-8290-11eb-873e-8fab514c9282.png)
