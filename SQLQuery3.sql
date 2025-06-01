-- Q3. List of all customers who live in berlin or london ?

select c.CustomerID , a.city
from Sales.Customer c
join Person.BusinessEntityAddress B
on (c.PersonID = B.BusinessEntityID)
join Person.Address a
on (b.AddressID = a.AddressID)
where a.city in ('Berlin' , 'London')