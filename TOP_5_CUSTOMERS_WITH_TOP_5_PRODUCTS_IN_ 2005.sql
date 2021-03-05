use AdventureWorks2012
go

select  distinct customerid,year(orderdate) as year,sum(soh.TotalDue) as sum
from sales.SalesOrderDetail as sod
join sales.SalesOrderHeader as soh
on sod.salesorderid=soh.SalesOrderID

where year(orderdate)='2005'
group by year(orderdate),customerid
having sum(soh.TotalDue)>4100000

order by customerid

select top 5 soh.customerid,sod.ProductID,orderqty,year(orderdate) as year
from sales.SalesOrderHeader soh
join sales.salesorderdetail sod
on soh.SalesOrderID=sod.SalesOrderID
where customerid in ('29562')
union
select top 5 soh.customerid,sod.ProductID,orderqty,year(orderdate) as year
from sales.SalesOrderHeader soh
join sales.salesorderdetail sod
on soh.SalesOrderID=sod.SalesOrderID
where customerid in ('29624')
union
select top 5 soh.customerid,sod.ProductID,orderqty,year(orderdate) as year
from sales.SalesOrderHeader soh
join sales.salesorderdetail sod
on soh.SalesOrderID=sod.SalesOrderID
where customerid in ('29690')
union
select top 5 soh.customerid,sod.ProductID,orderqty,year(orderdate) as year
from sales.SalesOrderHeader soh
join sales.salesorderdetail sod
on soh.SalesOrderID=sod.SalesOrderID
where customerid in ('29722')
union
select top 5 soh.customerid,sod.ProductID,orderqty,year(orderdate) as year
from sales.SalesOrderHeader soh
join sales.salesorderdetail sod
on soh.SalesOrderID=sod.SalesOrderID
where customerid in ('29861')