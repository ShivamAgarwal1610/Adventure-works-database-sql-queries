--   23. List of discontinued product who were ordereed between 1/1/1997 and 1/1/1998


select p.ProductID , p.Name , p.SellEndDate
from Production.Product p
join Sales.SalesOrderDetail D
on (p.ProductID = D.ProductID)
join Sales.SalesOrderHeader H
on (d.SalesOrderID = h.SalesOrderID)
where h.OrderDate between'1-1-1997'and '1-1-1998'and p.sellenddate is not null

