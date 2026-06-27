CREATE DATABASE IF NOT EXISTS superstore_db;
USE superstore_db;

SELECT MIN(Sales), MAX(Sales)
FROM samplesuperstore;

SELECT ROUND(SUM(Sales),2) AS Total_Sales
FROM samplesuperstore;

SELECT ROUND(SUM(Profit),2) AS Total_Profit
FROM samplesuperstore;

SELECT category,
ROUND(SUM(Sales),2) AS Sales
FROM samplesuperstore
GROUP BY category
ORDER BY Sales DESC;

SELECT Region,
ROUND(SUM(Sales),2) AS Sales,
ROUND(SUM(Profit),2) AS Profit
FROM samplesuperstore
GROUP BY Region;

SELECT State,
ROUND(SUM(Sales),2) AS Sales
FROM samplesuperstore
GROUP BY State
ORDER BY Sales DESC
LIMIT 10;








