-- Q10. List of customers who ordered Tofu

SELECT DISTINCT c.CustomerID, p.FirstName, p.LastName
FROM Sales.Customer c
JOIN Sales.SalesOrderHeader soh ON c.CustomerID = soh.CustomerID
JOIN Sales.SalesOrderDetail sod ON soh.SalesOrderID = sod.SalesOrderID
JOIN Production.Product pr ON sod.ProductID = pr.ProductID
JOIN Person.Person p ON c.PersonID = p.BusinessEntityID
WHERE pr.Name = 'Tofu';
