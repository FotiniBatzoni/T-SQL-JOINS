USE AdventureWorks2012;
 GO 
 
SELECT sod.SalesOrderID, sod.SalesOrderDetailID,
      so.ProductID, so.SpecialOfferID, so.ModifiedDate
 FROM Sales.SalesOrderDetail AS sod 
 INNER JOIN Sales.SpecialOfferProduct AS so
      ON so.ProductID = sod.ProductID AND
	     so.SpecialOfferID = sod.SpecialOfferID
 WHERE sod.SalesOrderID IN (51116,51112); 