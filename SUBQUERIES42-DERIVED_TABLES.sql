USE AdventureWorks2012;
 GO 
 
 ALTER TABLE Sales.SalesOrderDetail 
 ADD OrderID INT NULL;
 GO 
 UPDATE Sales.SalesOrderDetail 
 SET OrderID = SalesOrderID; 