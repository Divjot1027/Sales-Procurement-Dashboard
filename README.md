# Sales-Procurement-Dashboard
Cleaned and transformed raw sales and procurement data using MySQL, ensuring data quality across multiple Atliq Hardware retail outlets in India by correcting inconsistencies and errors.

Conducted comprehensive data analysis of yearly sales and purchases to uncover insights and trends.

Designed an interactive Tableau dashboard to visualize KPIs, store-level comparisons, and trends over time.

Used a free trial of Tableau Desktop to create the dashboard, but after the trial ended, I was only able to retain the PowerPoint presentation (PPT) that showcases the final visualizations and insights.

Here’s a clean and polished version of your SQL-based data analysis steps, along with the corresponding queries:

---

Data Analysis Using SQL

## 🗃️ Data Cleaning and Analysis

Here’s a summary of the SQL-based data exploration and cleaning steps that I used :

### ✅ Shows all customer records
```sql
SELECT * FROM sales.transactions;
````

### ✅ Shows the total number of customers

```sql
SELECT COUNT(*) FROM sales.transactions;
```

### ✅ Shows the transactions for Chennai market (market code 'Mark001')

```sql
SELECT * FROM sales.transactions WHERE market_code = 'Mark001';
```

### ✅ Shows the distinct product codes that were sold in Chennai

```sql
SELECT DISTINCT product_code FROM sales.transactions WHERE market_code = 'Mark001';
```

### ✅ Shows the transactions in 2020 (joined with date table)

```sql
SELECT sales.transactions.*, sales.date.* 
FROM sales.transactions 
INNER JOIN sales.date ON sales.transactions.order_date = sales.date.date 
WHERE sales.date.year = 2020;
```

### ✅ Shows the total revenue in year 2020

```sql
SELECT SUM(transactions.sales_amount) 
FROM sales.transactions 
INNER JOIN sales.date ON sales.transactions.order_date = sales.date.date 
WHERE sales.date.year = 2020;
```

### ✅ Shows the total revenue in year 2020, January month

```sql
SELECT SUM(transactions.sales_amount) 
FROM sales.transactions 
INNER JOIN sales.date ON sales.transactions.order_date = sales.date.date 
WHERE sales.date.year = 2020 AND sales.date.month_name = 'January';
```

### ✅ Shows the total revenue in year 2020 in Chennai

```sql
SELECT SUM(transactions.sales_amount) 
FROM sales.transactions 
INNER JOIN sales.date ON sales.transactions.order_date = sales.date.date 
WHERE sales.date.year = 2020 AND sales.transactions.market_code = 'Mark001';
```

---

## 📊 Dashboard

The interactive dashboard was designed in Tableau Desktop (free trial) and visualized key performance indicators, store-level comparisons, and revenue trends. The dashboard itself is not accessible post-trial, but the key insights are available in the included PPT.

---

Feel free to explore the repository, and let me know if you’d like to contribute or have any questions!

```
