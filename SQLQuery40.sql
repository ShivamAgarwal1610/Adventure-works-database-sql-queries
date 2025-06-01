-- 42. what is the total revenue of the company

select sum(TotalDue) as total_revenue 
from Sales.SalesOrderHeader