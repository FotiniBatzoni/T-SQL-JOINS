USE AdventureWorks2012;
 GO 
 
 ALTER TABLE Sales.SalesOrderDetail 
 ADD OrderID INT NULL;
 GO 
 UPDATE Sales.SalesOrderDetail 
 SET OrderID = SalesOrderID; 

 --1 
 SELECT o.SalesOrderID, d.SalesOrderDetailID
  FROM Sales.SalesOrderHeader AS o 
  INNER JOIN Sales.SalesOrderDetail AS d 
  ON o.SalesOrderID = d.SalesOrderID; 

  SELECT o.SalesOrderID,d.SalesOrderDetailID
   FROM Sales.SalesOrderHeader AS o 
   INNER JOIN Sales.SalesOrderDetail AS d 
   ON o.SalesOrderID = d.OrderID; 
 