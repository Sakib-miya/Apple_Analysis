create database Apple_project;
use Apple_project;
select * from apple_sales_analytics;
-- 📌 Query 1: Total revenue by product
-- Shows which Apple products generate the most revenue
SELECT Product, SUM(Revenue) AS total_revenue
FROM apple_sales_analytics
GROUP BY Product
ORDER BY total_revenue DESC;

-- 📌 Query 2: Sales trend by year
-- Tracks how Apple product sales have changed over years
SELECT Release_Year, SUM(Sales_Units) AS total_units
FROM apple_sales_analytics
GROUP BY Release_Year
ORDER BY Release_Year;

-- 📌 Query 3: Top 5 countries by total revenue
-- Identifies where Apple earns the most globally
SELECT Country, SUM(Revenue) AS total_revenue
FROM apple_sales_analytics
GROUP BY Country
ORDER BY total_revenue DESC
LIMIT 5;

-- 📌 Query 4: Average selling price by product line
-- Helps understand product category pricing
SELECT Product_Line, ROUND(AVG(Price), 2) AS avg_price
FROM apple_sales_analytics
GROUP BY Product_Line;

-- 📌 Query 5: Total units sold by region
-- Useful for analyzing geographic performance
SELECT Region, SUM(Sales_Units) AS total_units
FROM apple_sales_analytics
GROUP BY Region;

-- 📌 Query 6: Best-selling product in each region
-- Uses window function to find top product per region
SELECT Region, Product, total_units
FROM (
  SELECT Region, Product, SUM(Sales_Units) AS total_units,
         RANK() OVER (PARTITION BY Region ORDER BY SUM(Sales_Units) DESC) AS rnk
  FROM apple_sales_analytics
  GROUP BY Region, Product
) AS ranked
WHERE rnk = 1;

-- 📌 Query 7: Revenue share by product line
-- Percentage breakdown of revenue by product category
SELECT Product_Line,
       ROUND(SUM(Revenue) * 100.0 / (SELECT SUM(Revenue) FROM apple_sales_analytics), 2) AS revenue_share_pct
FROM apple_sales_analytics
GROUP BY Product_Line;

-- 📌 Query 8: Country with highest average price
-- Could indicate premium market opportunities
SELECT Country, ROUND(AVG(Price), 2) AS avg_price
FROM apple_sales_analytics
GROUP BY Country
ORDER BY avg_price DESC
LIMIT 1;

-- 📌 Query 9: Product performance by year
-- See what’s trending each year
SELECT Release_Year, Product, SUM(Sales_Units) AS units
FROM apple_sales_analytics
GROUP BY Release_Year, Product
ORDER BY Release_Year, units DESC;

-- 📌 Query 10: High-value customers
-- Customers who generated the most revenue
SELECT Customer_ID, SUM(Revenue) AS customer_revenue
FROM apple_sales_analytics
GROUP BY Customer_ID
ORDER BY customer_revenue DESC
LIMIT 10;

-- 📌 Query 11: Price distribution stats by product line
-- Helps compare premium vs. budget segments
SELECT Product_Line,
       ROUND(MIN(Price), 2) AS min_price,
       ROUND(AVG(Price), 2) AS avg_price,
       ROUND(MAX(Price), 2) AS max_price
FROM apple_sales_analytics
GROUP BY Product_Line;

-- 📌 Query 12: Country-wise unit and revenue comparison
-- Side-by-side summary by market
SELECT Country,
       SUM(Sales_Units) AS total_units,
       SUM(Revenue) AS total_revenue
FROM apple_sales_analytics
GROUP BY Country
ORDER BY total_revenue DESC;

-- 📌 Query 13: Most popular product line globally
-- Based on units sold
SELECT Product_Line, SUM(Sales_Units) AS total_units
FROM apple_sales_analytics
GROUP BY Product_Line
ORDER BY total_units DESC
LIMIT 1;

-- 📌 Query 14: Top products per year by revenue
-- Window function to identify yearly winners
SELECT Release_Year, Product, yearly_revenue
FROM (
  SELECT Release_Year, Product, SUM(Revenue) AS yearly_revenue,
         RANK() OVER (PARTITION BY Release_Year ORDER BY SUM(Revenue) DESC) AS rnk
  FROM apple_sales_analytics
  GROUP BY Release_Year, Product
) AS ranked
WHERE rnk = 1;

-- 📌 Query 15: Revenue trend by region over time
-- Tracks regional growth
SELECT Release_Year, Region, SUM(Revenue) AS revenue
FROM apple_sales_analytics
GROUP BY Release_Year, Region
ORDER BY Release_Year, Region;
