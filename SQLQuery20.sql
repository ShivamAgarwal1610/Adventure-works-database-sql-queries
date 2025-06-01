-- 19. list of all orders with order total > 200 

select SalesOrderID , OrderDate , CustomerID , TotalDue
from Sales.SalesOrderHeader
where TotalDue > 200