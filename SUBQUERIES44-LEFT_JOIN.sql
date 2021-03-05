USE AdventureWorks2012;
 GO 


 SELECT C.CustomerID,SOH.SalesOrderID,SOH.OrderDate
 FROM SALES.CUSTOMER AS C
 LEFT JOIN SALES.SalesOrderHeader AS SOH
 ON C.CustomerID= SOH.CustomerID
 WHERE  SOH.OrderDate BETWEEN '2005/01/01' AND '2005/12/31'