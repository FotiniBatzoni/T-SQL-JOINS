USE AdventureWorks2012;
 GO 
 
 SELECT SOH.SalesOrderID ,CR.CurrencyRateID, CR.AverageRate, SM.ShipBase
 FROM Sales.SalesOrderHeader AS SOH
 LEFT JOIN Sales.CurrencyRate AS CR
 ON SOH.CurrencyRateID=CR.CurrencyRateID
LEFT JOIN Purchasing.ShipMethod AS SM
ON SOH.ShipMethodID=SOH.ShipMethodID