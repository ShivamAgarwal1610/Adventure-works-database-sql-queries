-- 41. top 10 customer based on their business



select top 10 h.customerid , sum(h.TotalDue) as total_business
from Sales.SalesOrderHeader h
group by h.customerid 
order by total_business desc














