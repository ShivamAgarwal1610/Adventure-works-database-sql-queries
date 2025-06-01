-- Q8. list of customer who live in london and have bought chai ?

SELECT DISTINCT c.CustomerID, p.FirstName, p.LastName, a.City, pr.Name AS ProductName
FROM Sales.Customer c
JOIN Sales.SalesOrderHeader soh ON c.CustomerID = soh.CustomerID
JOIN Sales.SalesOrderDetail sod ON soh.SalesOrderID = sod.SalesOrderID
JOIN Production.Product pr ON sod.ProductID = pr.ProductID
JOIN Person.Person p ON c.PersonID = p.BusinessEntityID
JOIN Person.BusinessEntityAddress bea ON c.CustomerID = bea.BusinessEntityID
JOIN Person.Address a ON bea.AddressID = a.AddressID
WHERE pr.Name = 'Chai' AND a.City = 'London';
