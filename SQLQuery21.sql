-- 20. List of countries and sales made in each country


select sp.CountryRegionCode AS Country, sum(TotalDue) as totalsales 
from sales.SalesOrderHeader s
join Person.Address a
on (a.AddressID = s.ShipToAddressID)
join Person.StateProvince sp
on (a.StateProvinceID = sp.StateProvinceID)
GROUP BY sp.CountryRegionCode;






