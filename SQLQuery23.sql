-- 22. List of customer contactname who have placed more than 3 orders


select p.firstname ,p.lastname as contactname , count(s.salesorderid) as numberoforders
from sales.SalesOrderHeader as s
join Sales.customer c
on (c.customerid = s.customerid)
join Person.Person p
on (c.PersonID = p.BusinessEntityID)
group by p.FirstName , p.LastName
having count(s.salesorderid) > 3


