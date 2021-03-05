USE AdventureWorks2012;
 GO 
 
 SELECT  SP.BusinessEntityID,PP.ProductID
 FROM  Sales.SalesPerson AS SP
 LEFT JOIN Person.Person AS P
 ON SP.BusinessEntityID = P.BusinessEntityID
 LEFT JOIN Purchasing.ProductVendor AS PV
 ON  PV.BusinessEntityID = SP.BusinessEntityID
 LEFT JOIN Production.Product AS PP
 ON PP.ProductID=PV.ProductID