SELECT * FROM sales.transactions;

select distinct currency from sales.transactions;
select count(*) from sales.transactions;

SELECT sum(transactions.sales_amount) FROM sales.transactions where market_code='Mark001';

SELECT distinct product_code FROM sales.transactions where market_code='Mark001';
SELECT count(*) FROM sales.transactions where market_code='Mark001';

select * from sales.transactions where currency ='USD';

SELECT sales.transactions.*, sales.date.year 
FROM sales.transactions 
INNER JOIN sales.date ON sales.transactions.order_date = sales.date.date
where sales.date.year='2020';

SELECT sum(transactions.sales_amount) FROM sales.transactions 
INNER JOIN sales.date ON sales.transactions.order_date = sales.date.date
where sales.date.year='2020';


SELECT sales.transactions.*, sales.date.* 
FROM sales.transactions 
INNER JOIN sales.date ON sales.transactions.order_date = sales.date.date
where sales.date.year=2020 and sales.date.month_name='January' ;


SELECT sales.transactions.*, sales.date.* 
FROM sales.transactions 
INNER JOIN sales.date ON sales.transactions.order_date = sales.date.date
where sales.date.year=2020 and sales.transactions.market_code='Mark001'











	
