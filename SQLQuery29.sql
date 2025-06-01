-- 28. List of orders and product names


select h.SalesOrderID , p.name
from Sales.SalesOrderHeader h
join Sales.SalesOrderDetail d
on  (h.SalesOrderID = d.SalesOrderID)
join Production.Product p
on (d.ProductID = p.ProductID)













