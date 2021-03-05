USE AdventureWorks2012;
 GO 
 
 SELECT  CUSTOMERID,AccountNumber
 FROM SALES.Customer
 WHERE CustomerID IN ( SELECT CustomerID FROM Sales.SalesOrderHeader)