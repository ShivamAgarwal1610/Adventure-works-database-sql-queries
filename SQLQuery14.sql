--13.For each order gets the OrderID and the Average quantity of items in that order

select SalesOrderID , avg(OrderQty) 
from Sales.SalesOrderDetail 
group by SalesOrderID