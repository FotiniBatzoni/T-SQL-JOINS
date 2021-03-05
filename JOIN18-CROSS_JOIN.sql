USE AdventureWorks2012;
GO 

SELECT p.ProductID, l.LocationID
 FROM Production.Product AS p
 CROSS JOIN Production.Location AS l 
ORDER BY ProductID;