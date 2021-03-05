USE AdventureWorks2012; 
GO 

SELECT PM.CatalogDescription,PM.Name,PP.Color,PP.Size
FROM  Production.Product AS PP
INNER JOIN Production.ProductModel AS PM
ON PP.ProductModelID = PM.ProductModelID