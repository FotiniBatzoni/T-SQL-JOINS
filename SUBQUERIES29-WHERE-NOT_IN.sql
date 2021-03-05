USE AdventureWorks2012;
 GO 
 
 SELECT  CUSTOMERID,AccountNumber
 FROM SALES.Customer
 WHERE CustomerID  NOT IN 
	( SELECT CustomerID FROM Sales.SalesOrderHeader)