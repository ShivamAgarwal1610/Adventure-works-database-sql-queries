-- 38. orderdate of most expensive order


select top 1 Salesorderid , orderdate , TotalDue
from Sales.SalesOrderHeader
order by TotalDue desc