USE AdventureWorks2012;
 GO 
 
 SELECT  SP.BusinessEntityID,PP.ProductID
 FROM  Sales.SalesPerson AS SP
CROSS JOIN Production.Product AS PP