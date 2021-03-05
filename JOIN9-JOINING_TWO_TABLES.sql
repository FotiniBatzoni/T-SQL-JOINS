USE AdventureWorks2012; 
GO 

SELECT SOH.SalesOrderID, SP.Bonus,SP.SalesQuota
FROM  Sales.SalesOrderHeader AS SOH
INNER JOIN Sales.SalesPerson AS SP
ON SP. BusinessEntityID = SOH.SalesPersonID 