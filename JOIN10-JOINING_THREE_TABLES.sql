USE AdventureWorks2012; 
GO 

SELECT SOH.SalesOrderID, SP.Bonus,SP.SalesQuota,PP.LastName
FROM  Sales.SalesOrderHeader AS SOH
INNER JOIN Sales.SalesPerson AS SP
ON SP. BusinessEntityID = SOH.SalesPersonID 
INNER JOIN Person.Person AS PP
ON PP.BusinessEntityID=SP.BusinessEntityID