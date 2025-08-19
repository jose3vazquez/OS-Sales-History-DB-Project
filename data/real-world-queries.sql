
1.
   SELECT TOP (1000) *
   FROM dbo.os_sales_hist;


2.
   SELECT TOP 3 
       product_name, 
       SUM(total_revenue) AS total_revenue_generated
   FROM dbo.os_sales_hist
   GROUP BY product_name
   ORDER BY total_revenue_generated DESC;


3.
   SELECT 
       YEAR(sales_date) AS year,
       SUM(units_sold) AS total_units_sold
   FROM dbo.os_sales_hist
   GROUP BY YEAR(sales_date)
   ORDER BY year ASC;


4.
   SELECT 
     region,
     SUM(total_revenue) AS total_revenue
   FROM dbo.os_sales_hist
   GROUP BY region
   ORDER BY total_revenue DESC;



5.
   SELECT 
       channel,
       SUM(total_revenue) AS revenue_by_channel
   FROM dbo.os_sales_hist
   GROUP BY channel
   ORDER BY revenue_by_channel DESC;




