# 📊 SQL Assignment — Question 2

## 👤 Customer Orders Query

### 🎯 Objective

The goal of this query is to display the **full name of customers**, their **order ID**, and **order date** for all customers who have placed an order.

The results are sorted by **order date in descending order**, so the latest orders appear first. 📅⬇️

---

## 🗄️ Tables Used

This query uses two tables from the `sales` schema:

* 👤 `sales.customers` — Contains customer information.
* 🛒 `sales.orders` — Contains customer order information.

---

## 🔗 JOIN Used

An **INNER JOIN** is used to connect the two tables.

The tables are connected using:

```sql
c.customer_id = o.customer_id
```

This ensures that only customers who have placed an order are included in the result. ✅

---

## 📝 SQL Query

```sql
SELECT 
    c.first_name + ' ' + c.last_name AS full_name,
    o.order_id,
    o.order_date
FROM sales.customers AS c
INNER JOIN sales.orders AS o
    ON c.customer_id = o.customer_id
ORDER BY o.order_date DESC;
```

---

## 📋 Output

The query returns the following columns:

| Column          | Description                    |
| --------------- | ------------------------------ |
| 👤 `full_name`  | Customer's first and last name |
| 🆔 `order_id`   | Unique ID of the order         |
| 📅 `order_date` | Date when the order was placed |

---

## 🔍 Key SQL Concepts

* `SELECT` → Selects the required columns.
* `+` → Combines first name and last name in SQL Server.
* `INNER JOIN` → Matches customers with their orders.
* `ON` → Defines the relationship between the two tables.
* `ORDER BY` → Sorts the result.
* `DESC` → Sorts the orders from newest to oldest.

---

## 💡 Important Note

Since this assignment is being performed in **SQL Server / SSMS**, string concatenation uses:

```sql
first_name + ' ' + last_name
```

instead of:

```sql
first_name || ' ' || last_name
```

---

## ✅ Expected Result

The final result will show:

**Customer Full Name → Order ID → Order Date**

with the **most recent orders displayed first**. 🚀

---

### 👨‍💻 Assignment Status

**Question 2 — Completed ✅**

**Database:** BikeStores 🏪
**Schema:** `sales`
**Tool:** SQL Server / SSMS 💻
