USE AdventureWorks2012;
 GO


 SELECT c.CustomerID, c.PersonID,
		p.BusinessEntityID, p.LastName 
FROM Sales.Customer AS c 
INNER JOIN Person.Person AS p
   ON c.PersonID = p.BusinessEntityID; 