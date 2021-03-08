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
WHERE price < 1000;
```

![](https://drive.google.com/uc?id=17J1rhrr5ZoEyLfHhtqdHl9qR_dlrX6Hz)

> **query 2 (non-key 2 tabel)**

```sql
SELECT * FROM CUSTOMERS, CARTS
WHERE CUSTOMERS.name = 'Kit McLese';
```

![](https://drive.google.com/uc?id=1UHeNXh6bi7uxFS6Xpe_H1SDiTItGslAD)

> **query 3 (non-key 3 tabel)**

```sql
SELECT CUSTOMERS.name, CUSTOMERS.address, PRODUCTS.title, CARTS.created_at FROM CUSTOMERS, PRODUCTS, CARTS
WHERE CUSTOMERS.name = 'Ally Battyll';
```

![](https://drive.google.com/uc?id=1KYTpThYJgPoWXjtFrZHaeOloI5Bn7dEV)

> **query 4 (key 2 tabel)**

```sql
SELECT PRODUCTS.title, CARTS.created_at FROM PRODUCTS, CARTS
WHERE PRODUCTS.product_id = 56 AND (CARTS.created_at between to_date('2021-01-01 00:00:00', 'YYYY-DD-MM HH24:MI:SS') and sysdate);
```

![](https://drive.google.com/uc?id=1DXs7JOjMS160etv9RTEK3P3zm4dMSWPO)

> **query 5 (key 3 tabel)**

```sql
SELECT CUSTOMERS.name, CUSTOMERS.address, PRODUCTS.title, CARTS.created_at FROM CUSTOMERS, PRODUCTS, CARTS
WHERE CUSTOMERS.customer_id = 15 AND PRODUCTS.product_id = 80;
```

![](https://drive.google.com/uc?id=1KUZnnJRWz_p2pXrnFLBPFILJd4y_kQJ8)
