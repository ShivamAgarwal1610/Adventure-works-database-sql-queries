-- Q7. List of customers who ever placed an order ?

select distinct c.customerid , p.FirstName , p.LastName
from Sales.Customer c
join Sales.SalesOrderHeader s
on (c.CustomerID = s.CustomerID)
join Person.Person p
on (c.PersonID = p.BusinessEntityID)
