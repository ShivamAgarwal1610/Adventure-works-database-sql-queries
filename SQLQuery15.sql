--Q14. for each order get the orderid ,minimum quantity and maximum quantity for that orderid


select salesorderid, min(OrderQty) as minimum_quantity,max(OrderQty) as maximum_quantity
from sales.SalesOrderDetail
group by SalesOrderID