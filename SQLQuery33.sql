-- 34. list of products that were never ordered


select p.productid , p.name
from Production.Product p
where p.ProductID not in (select distinct s.ProductID from Sales.SalesOrderDetail s)