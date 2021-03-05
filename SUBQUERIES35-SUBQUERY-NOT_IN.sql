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
  INSERT INTO Production.ProductColor VALUES ('Green'),('Orange'),('Purple'); 
 

 SELECT ProductID,Color
 FROM Production.Product
 WHERE Color NOT IN (SELECT Color
                     FROM Production.ProductColor
					)
 