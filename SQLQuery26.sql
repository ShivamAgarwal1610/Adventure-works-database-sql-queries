-- 25. List of employees id and total sale conducted by the employee

select s.SalesPersonID , round(sum(s.TotalDue),2) as total_sales
from Sales.SalesOrderHeader s
where s.SalesPersonID is not null
group by s.SalesPersonID
order by total_sales desc








