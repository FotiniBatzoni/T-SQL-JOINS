USE [AdventureWorks2012];
GO

SELECT C.CustomerID,SOH.SalesOrderID, SOD.SalesOrderDetailID,SOD.ProductID,T.NAME
FROM  Sales.Customer AS C
LEFT JOIN  Sales.SalesOrderHeader  AS SOH
ON C.CustomerID=SOH.CustomerID
LEFT JOIN Sales.SalesOrderDetail AS SOD
ON SOH.SalesOrderID=SOD.SalesOrderID
LEFT JOIN Sales.SalesTerritory AS T
ON C.TerritoryID=T.TerritoryID