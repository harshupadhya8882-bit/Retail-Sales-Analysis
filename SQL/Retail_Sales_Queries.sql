CREATE DATABASE superstore;
USE superstore;
SELECT * FROM orders;
SELECT COUNT(*) FROM orders;
SELECT * FROM orders;
SELECT SUM(Sales) AS Total_Sales FROM orders;
SELECT SUM(profit) AS Total_Profit FROM orders;
SELECT SUM(Quantity) AS Total_Quanity FROM orders;
SELECT Category,SUM(Sales) AS Total_Sales FROM orders GROUP BY Category ORDER BY Total_Sales DESC;
SELECT Category,SUM(Profit) AS Total_Profit FROM orders GROUP BY Category ORDER BY Total_Profit DESC;
SELECT Category,SUM(Quantity) AS Total_Quantity FROM orders GROUP BY Category ORDER BY Total_Quantity DESC;
SELECT `Sub-Category`,SUM(Profit) AS Total_Profit FROM orders GROUP BY `Sub-Category` ORDER BY Total_Profit DESC;
SELECT City,SUM(Sales) AS Total_Sales FROM orders GROUP BY City ORDER BY Total_Sales DESC LIMIT 10;
SELECT State,SUM(Profit) AS Total_Profit FROM orders GROUP BY State ORDER BY Total_profit DESC;
SELECT City,SUM(Sales) AS Total_Sales FROM orders GROUP BY City ORDER BY Total_Sales ASC LIMIT 10;
SELECT Category,SUM(Quantity) AS Total_Quantity FROM orders GROUP BY Category ORDER BY Total_Quantity;
SELECT Region,SUM(Sales) AS Total_Sales,SUM(Profit) AS Total_Profit FROM orders GROUP BY Region ORDER BY Total_Sales DESC;
SELECT State,SUM(Profit) AS Total_Profit FROM orders GROUP BY State HAVING Total_Profit>20000;
SELECT State,SUM(Sales) AS Total_Sales,SUM(Profit) AS Total_Profit,SUM(Quantity) AS Total_Quantity FROM orders GROUP BY State ORDER BY Total_Sales LIMIT 3;
SELECT
CASE
    WHEN Discount = 0 THEN 'No Discount'
    WHEN Discount <= 0.2 THEN 'Low Discount'
    WHEN Discount <= 0.5 THEN 'Medium Discount'
    ELSE 'High Discount'
END AS Discount_Group,
SUM(Profit) AS Total_Profit,
AVG(Profit) AS Average_Profit,
COUNT(*) AS Orders
FROM orders
GROUP BY Discount_Group;
SELECT Segment,SUM(Sales) AS Total_Sales,SUM(Profit) AS Total_Profit,SUM(Quantity) AS Total_Quantity FROM orders GROUP BY Segment ORDER BY Total_Profit DESC;
SELECT Segment,
       COUNT(*) AS Total_Orders,
       SUM(Sales) AS Total_Sales,
       SUM(Profit) AS Total_Profit,
       AVG(Profit) AS Avg_Profit
FROM orders
GROUP BY Segment
ORDER BY Total_Profit DESC;
SELECT State,SUM(Sales) AS Total_Sales,SUM(Profit) AS Total_Profit 
FROM orders 
GROUP BY State 
HAVING Total_Sales>100000 AND Total_Profit>10000
ORDER BY Total_Profit DESC;