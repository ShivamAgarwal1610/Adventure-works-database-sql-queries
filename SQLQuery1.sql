-- Q1. List of all customers

select c.CustomerID , p.FirstName , p.LastName
from Sales.Customer c
join Person.Person p
on (c.PersonID = p.BusinessEntityID)
where PersonID is not null