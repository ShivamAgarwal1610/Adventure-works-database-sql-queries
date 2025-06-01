-- 18. list of all order shipped to canada


select s.SalesOrderID , s.OrderDate , a.AddressLine1 , a.City , sp.CountryRegionCode
from Sales.SalesOrderHeader s
join Person.Address a
on (s.ShipToAddressID = a.AddressID)
join Person.StateProvince as sp
on (a.StateProvinceID = sp.StateProvinceID) 
WHERE sp.CountryRegionCode = 'CA'; 

