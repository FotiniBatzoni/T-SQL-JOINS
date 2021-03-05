USE AdventureWorks2012;
 GO 
 
SELECT c.CustomerID, s.SalesOrderID
 FROM Sales.Customer AS c 
 INNER JOIN (SELECT SalesOrderID, CustomerID             
			FROM Sales.SalesOrderHeader) AS s 
ON c.CustomerID = s.CustomerID