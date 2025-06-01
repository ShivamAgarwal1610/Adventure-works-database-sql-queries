-- Q4. List of all customer who live in uk or usa ?

select distinct c.CustomerID,p.FirstName,p.LastName,sp.Name AS CountryRegion
from Sales.Customer c
JOIN Person.Person p 
ON (c.PersonID = p.BusinessEntityID)
JOIN Person.BusinessEntityAddress bea 
ON (p.BusinessEntityID = bea.BusinessEntityID)
JOIN Person.Address a ON bea.AddressID = a.AddressID
JOIN Person.StateProvince sp ON a.StateProvinceID = sp.StateProvinceID
WHERE sp.CountryRegionCode IN ('UK', 'US');

