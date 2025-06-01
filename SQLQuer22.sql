-- List of customer contactname and number of orders they placed

select p.firstname + ' ' + p.lastname as contactname , count(s.salesorderid) as numberoforders
from sales.SalesOrderHeader as s
join Sales.customer c
on (c.customerid = s.customerid)
join Person.Person p
on (c.PersonID = p.BusinessEntityID)
group by p.FirstName , p.LastName
ORDER BY NumberOfOrders DESC

