# Sales-Procurement-Dashboard
Cleaned and transformed raw sales and procurement data using MySQL, ensuring data quality across multiple Atliq Hardware retail outlets in India by correcting inconsistencies and errors.

Conducted comprehensive data analysis of yearly sales and purchases to uncover insights and trends.

Designed an interactive Tableau dashboard to visualize KPIs, store-level comparisons, and trends over time.

Used a free trial of Tableau Desktop to create the dashboard, but after the trial ended, I was only able to retain the PowerPoint presentation (PPT) that showcases the final visualizations and insights.

Here’s a clean and polished version of your SQL-based data analysis steps, along with the corresponding queries:

---

Data Analysis Using SQL

✅ **1. Show all customer records:**

```sql
SELECT * FROM sales.transactions;
```

✅ **2. Show total number of customers:**

```sql
SELECT COUNT(*) FROM sales.transactions;
```

✅ **3. Show transactions for Chennai market (market code for Chennai is 'Mark001'):**

```sql
SELECT * FROM sales.transactions WHERE market_code = 'Mark001';
```

✅ **4. Show distinct product codes that were sold in Chennai:**

```sql
SELECT DISTINCT product_code FROM sales.transactions WHERE market_code = 'Mark001';
```

✅ **5. Show transactions in 2020 (joined with date table):**

```sql
SELECT sales.transactions.*, sales.date.* 
FROM sales.transactions 
INNER JOIN sales.date ON sales.transactions.order_date = sales.date.date 
WHERE sales.date.year = 2020;
```

✅ **6. Show total revenue in year 2020:**

```sql
SELECT SUM(transactions.sales_amount) 
FROM sales.transactions 
INNER JOIN sales.date ON sales.transactions.order_date = sales.date.date 
WHERE sales.date.year = 2020;
```

✅ **7. Show total revenue in year 2020, January month:**

```sql
SELECT SUM(transactions.sales_amount) 
FROM sales.transactions 
INNER JOIN sales.date ON sales.transactions.order_date = sales.date.date 
WHERE sales.date.year = 2020 AND sales.date.month_name = 'January';
```

✅ **8. Show total revenue in year 2020 in Chennai:**

```sql
SELECT SUM(transactions.sales_amount) 
FROM sales.transactions 
INNER JOIN sales.date ON sales.transactions.order_date = sales.date.date 
WHERE sales.date.year = 2020 AND sales.transactions.market_code = 'Mark001';
```

---

Would you like me to format this as a document for your project report or add some commentary? Let me know!
