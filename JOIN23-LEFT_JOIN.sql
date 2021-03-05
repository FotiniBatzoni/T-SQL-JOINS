USE AdventureWorks2012;
 GO 
 
 SELECT SOH.SalesPersonID, SP.SalesYTD , SOH.SalesOrderID
 FROM Sales.SalesPerson AS SP
 LEFT JOIN Sales.SalesOrderHeader AS SOH
 ON SP.TerritoryID=SP.TerritoryID
