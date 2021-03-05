USE AdventureWorks2012;
 GO 
 
--1 
SELECT DISTINCT c.CustomerID 
FROM Sales.Customer AS c 
INNER JOIN Sales.SalesOrderHeader AS o 
ON c.CustomerID = o.CustomerID

--2
 SELECT CustomerID
  FROM Sales.Customer
 WHERE CustomerID IN (SELECT CustomerID FROM Sales.SalesOrderHeader); 