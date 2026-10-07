SELECT * FROM fact_retail_sales;


SELECT 
	COUNT(*) AS total_records,
	ROUND(SUM(CASE WHEN transaction_type = 'SALE' THEN amount_paid ELSE 0 END),2) AS sales_revenue,
	ROUND(SUM(CASE WHEN transaction_type = 'RETURN' THEN amount_paid ELSE 0 END),2) AS return_deductions,
	ROUND(SUM(CASE WHEN transaction_type = 'SALE' THEN amount_paid ELSE - amount_paid END),2) AS net_revenue
FROM fact_retail_sales;


SELECT * FROM fact_retail_sales 
GROUP BY category ORDER BY;


SELECT DISTINCT(category)
FROM fact_retail_sales;

-- Category wise Sales Summary

SELECT DISTINCT(category)
FROM fact_retail_sales
WHERE transaction_type = 'SALE';


SELECT * FROM fact_retail_sales;

--min,max 
SELECT MIN(category)FROM fact_retail_sales;

SELECT MAX(category)FROM fact_retail_sales;

SELECT order_id,category,
	MIN(category) OVER( PARTITION BY order_id)
	FROM fact_retail_sales;

SELECT order_id,category,
	MIN(category) PARTITION BY OVER(  order_id)
	FROM fact_retail_sales;



SELECT DISTINCT(category),
	MIN(category) OVER(),
	MAX(category) OVER()
	-- SUM(category) OVER(PARTITION BY order_id)
	FROM fact_retail_sales; 



SELECT category,
	MIN(category) OVER( PARTITION BY order_id)
	FROM fact_retail_sales GROUP BY category;


SELECT * FROM fact_retail_sales;


SELECT DISTINCT(category),
	MIN(category) OVER(),
	MAX(category) OVER()
	FROM fact_retail_sales; 


--Working query
-- Category wise Sales Summary 
SELECT category,SUM(amount_paid) FROM fact_retail_sales GROUP BY category;




