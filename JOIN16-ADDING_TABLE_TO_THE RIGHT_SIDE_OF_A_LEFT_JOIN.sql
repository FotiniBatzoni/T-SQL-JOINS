USE [AdventureWorks2012];
GO

SELECT C.CustomerID,T.NAME
FROM  Sales.Customer AS C
LEFT JOIN Sales.SalesTerritory AS T
ON C.TerritoryID=T.TerritoryID