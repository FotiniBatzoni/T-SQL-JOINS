USE AdventureWorks2012; 
GO 
 
SELECT HE.JobTitle,HE.BirthDate,PP.FirstName,PP.LastName
FROM HumanResources.Employee AS HE
INNER JOIN Person.Person AS PP
ON HE.BusinessEntityID = PP.BusinessEntityID