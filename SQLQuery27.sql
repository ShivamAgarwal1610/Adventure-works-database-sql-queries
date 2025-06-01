--26. List of employees whose first name contains character A


select p.FirstName , p.LastName
from Person.Person p 
join HumanResources.Employee e
on (e.BusinessEntityID = p.BusinessEntityID)
where FirstName like 'a%' or FirstName like '%a%' 