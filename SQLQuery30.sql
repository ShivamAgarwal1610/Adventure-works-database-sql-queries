-- 29. List of orders place by the best customers

select h.SalesOrderID , h.OrderDate , h.CustomerID 
from Sales.SalesOrderHeader h
where h.CustomerID = (
select top 1 CustomerID 
from Sales.SalesOrderHeader
group by CustomerID
order by count(*) desc
);





