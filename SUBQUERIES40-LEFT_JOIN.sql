USE AdventureWorks2012;
 GO 

 SELECT c.CustomerID, s.SalesOrderID, s.OrderDate
  FROM Sales.Customer AS c
   LEFT OUTER JOIN Sales.SalesOrderHeader AS s 
   ON c.CustomerID = s.CustomerID
  WHERE s.OrderDate = '2005/07/01'
