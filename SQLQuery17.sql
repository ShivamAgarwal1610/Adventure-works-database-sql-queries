-- 16. Get the OrderID and the total quantity for each order that has a total quantity of greater than 300.


select SalesOrderID , sum(OrderQty)
from Sales.SalesOrderDetail
group by salesorderid
having sum(OrderQty) > 300
