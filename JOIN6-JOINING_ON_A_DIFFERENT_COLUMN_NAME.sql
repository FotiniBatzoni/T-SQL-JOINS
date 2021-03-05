USE AdventureWorks2012; 
GO 
 
SELECT SC.CustomerID, SC.StoreID, SC.TerritoryID, PP.FirstName, PP.LastName
FROM Sales.Customer AS SC
INNER JOIN Person.Person AS PP
ON PP.BusinessEntityID = SC.PersonID