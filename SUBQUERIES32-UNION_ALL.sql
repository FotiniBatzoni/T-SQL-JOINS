USE AdventureWorks2012;
 GO 
 
--1 

SELECT BusinessEntityID AS ID
FROM HumanResources.Employee 
UNION ALL
SELECT BusinessEntityID 
FROM Person.Person 
UNION ALL
SELECT SalesOrderID 
FROM Sales.SalesOrderHeader 
ORDER BY ID; 
 