USE AdventureWorks2012;
 GO 
 
WITH ORDERS AS (
   SELECT SalesOrderID, CustomerID 
   FROM Sales.SalesOrderHeader
   )
SELECT  c.CustomerID, orders.SalesOrderID
FROM Sales.Customer AS c
INNER JOIN ORDERS
ON c.CustomerID = orders.CustomerID