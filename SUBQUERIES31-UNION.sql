USE AdventureWorks2012;
 GO 
 
--1 

SELECT BusinessEntityID AS ID
FROM HumanResources.Employee 
UNION 
SELECT BusinessEntityID 
FROM Person.Person 
UNION 
SELECT SalesOrderID 
FROM Sales.SalesOrderHeader 
ORDER BY ID; 
 