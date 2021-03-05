USE AdventureWorks2012;
 GO 
 

SELECT Name,ProductID
FROM Production.Product
WHERE ProductID IN ( SELECT ProductID
					FROM Sales.SalesOrderDetail)