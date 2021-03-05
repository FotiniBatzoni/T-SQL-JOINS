USE AdventureWorks2012; 
GO 
IF OBJECT_ID('Production.ProductColor') IS NOT NULL
 BEGIN     
 
 DROP TABLE Production.ProductColor; 
 END
  CREATE table Production.ProductColor     
  (Color nvarchar(15) NOT NULL PRIMARY KEY) 
  GO 

  --Insert most of the existing colors 
  INSERT INTO Production.ProductColor
  
   SELECT DISTINCT Color 
   FROM Production.Product
   WHERE Color IS NOT NULL and Color <> 'Silver' 
 
   --Insert some additional colors

    INSERT INTO Production.ProductColor 
	VALUES ('Green'),('Orange'),('Purple'); 
 
--Here is the query: 
SELECT c.Color AS "Color from list", p.Color, p.ProductID 
FROM Production.Product AS p 
FULL OUTER JOIN Production.ProductColor AS c
 ON p.Color = c.Color
 ORDER BY p.ProductID; 