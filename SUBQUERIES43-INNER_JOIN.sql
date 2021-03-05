USE AdventureWorks2012;
 GO 


SELECT SOD.SalesOrderID,SOH.ProductID,SOD.OrderDate
FROM Sales.SalesOrderHeader AS SOD
INNER JOIN Sales.SalesOrderDetail AS SOH
ON SOD.SalesOrderID=SOH.SalesOrderID 