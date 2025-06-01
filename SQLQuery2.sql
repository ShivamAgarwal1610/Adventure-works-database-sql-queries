
-- Q2. List of all customers where company name ending in N 

select c.CustomerID , s.name as companyname
from Sales.Customer c
join sales.Store s
on (s.BusinessEntityID = c.StoreID)
where s.name like '%N'