USE AdventureWorks2012;
 GO 
 
 SELECT SOH.SalesPersonID,PP.LastName, SP.SalesYTD , SOH.SalesOrderID
 FROM Sales.SalesPerson AS SP
 LEFT JOIN Sales.SalesOrderHeader AS SOH
 ON SP.TerritoryID=SP.TerritoryID
 LEFT JOIN Person.Person AS PP
 ON SOH.SalesPersonID=PP.BusinessEntityID