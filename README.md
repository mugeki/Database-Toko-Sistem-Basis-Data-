# INDEXING PROJECT 1

---

KELOMPOK :

-   ARFAN JADULHAQ - 1301194277
-   MUCHAMMAD ALFI KAROM - 1301190363
-   MUHAMAD ELANG RAMADHAN - 1301190458

---

Pada tugas ini kami membuat 3 tabel beserta isinya dan query untuk menampilkan data

> **Database Model**

![](https://drive.google.com/uc?id=1ek6i6rtwqrs64PB61RWASEM7d_uBWzhT)

> **query 1 (non-key 1 tabel)**

```sql
SELECT * FROM PRODUCTS
WHERE price < 1000 AND price_currency = 'USD';
```

![](https://drive.google.com/uc?id=1ohgHmljgXpQddft3O2tIxZ_OaKq7vxVa)

> **query 2 (non-key 2 tabel)**

```sql
SELECT * FROM CUSTOMERS, CARTS
WHERE CUSTOMERS.name = 'Kit McLese';
```

![](https://drive.google.com/uc?id=15PhpzZuVosItUeOAKRe0CCvPrcLnym_u)

> **query 3 (non-key 3 tabel)**

```sql
SELECT CUSTOMERS.name, CUSTOMERS.address, PRODUCTS.title, CARTS.created_at FROM CUSTOMERS, PRODUCTS, CARTS
WHERE CUSTOMERS.name = 'Ally Battyll';
```

![](https://drive.google.com/uc?id=1TRVAr7vo_pkGbUxtv06FuOjrNHwaCbLF)

> **query 4 (key 2 tabel)**

```sql
SELECT PRODUCTS.title, CARTS.created_at FROM PRODUCTS, CARTS
WHERE PRODUCTS.product_id = 56 AND (CARTS.created_at between to_date('2021-01-01 00:00:00', 'YYYY-DD-MM HH24:MI:SS') and sysdate);
```

![](https://drive.google.com/uc?id=1600k01XUxtfPb9QymmDCyUqaHQuJmzkS)

> **query 5 (key 3 tabel)**

```sql
SELECT CUSTOMERS.name, CUSTOMERS.address, PRODUCTS.title, CARTS.created_at FROM CUSTOMERS, PRODUCTS, CARTS
WHERE CUSTOMERS.customer_id = 15 AND PRODUCTS.product_id = 80;
```

![](https://drive.google.com/uc?id=1Fufz0C-cR6QBdBM7dfgh8rOrWKhi1NPt)
