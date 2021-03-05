USE ADVENTUREWORKS2012;
GO


WITH orders AS (     
SELECT SalesOrderID, CustomerID, OrderDate     
FROM Sales.SalesOrderHeader     
WHERE OrderDate = '2005/07/01'  
   ) 
   SELECT c.CustomerID, orders.SalesOrderID, orders.OrderDate 
   FROM Sales.Customer AS c 
   LEFT OUTER JOIN orders 
   ON c.CustomerID = orders.CustomerID
 ORDER BY orders.OrderDate DESC;