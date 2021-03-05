USE AdventureWorks2012;
 GO 
 
 SELECT s.SalesOrderID, s.OrderDate, s.TotalDue, 
		d.SalesOrderDetailID, d.ProductID, d.OrderQty
 FROM Sales.SalesOrderHeader AS s 
  INNER JOIN Sales.SalesOrderDetail AS d 
ON s.SalesOrderID = d.SalesOrderID; 