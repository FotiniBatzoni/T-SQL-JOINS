USE AdventureWorks2012;
 GO 
 

SELECT  ModifiedDate
FROM Person.Person
UNION
SELECT HireDate
FROM HumanResources.Employee