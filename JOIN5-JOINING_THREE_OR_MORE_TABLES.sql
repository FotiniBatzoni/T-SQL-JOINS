USE AdventureWorks2012; 
GO 
 
SELECT soh.SalesOrderID, soh.OrderDate, p.ProductID, p.Name
 FROM Sales.SalesOrderHeader as soh
  INNER JOIN Sales.SalesOrderDetail AS sod 
  ON soh.SalesOrderID = sod.SalesOrderID 
  INNER JOIN Production.Product AS p 
  ON sod.ProductID = p.ProductID
 ORDER BY soh.SalesOrderID;