-- Q9. list of customers who never placed an order

select c.CustomerID , p.FirstName , p.LastName  
from Sales.Customer c
join Person.Person p
on (p.BusinessEntityID = c.CustomerID)
where c.customerid not in (
 select distinct CustomerID from Sales.SalesOrderHeader
 )
