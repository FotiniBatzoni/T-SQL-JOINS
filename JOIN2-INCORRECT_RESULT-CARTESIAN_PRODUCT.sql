USE AdventureWorks2012;
 GO
 
  SELECT s.SalesOrderID, OrderDate, TotalDue, SalesOrderDetailID,
       d.ProductID, d.OrderQty
 FROM Sales.SalesOrderHeader AS s 
 INNER JOIN Sales.SalesOrderDetail d 
ON 1 = 1; 