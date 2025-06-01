-- 39. product name and total revenue from that product


select p.name as product_name , sum(d.LineTotal) as total_revenue
from Production.Product p
join Sales.SalesOrderdetail d
on (p.ProductID  = d.ProductID)
group by p.name
order by total_revenue desc









