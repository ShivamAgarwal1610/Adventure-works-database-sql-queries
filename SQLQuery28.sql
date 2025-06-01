-- 27. List of managers who have more than four people reporting to them

SELECT manager.BusinessEntityID AS ManagerID, p.FirstName, p.LastName,
   COUNT(emp.BusinessEntityID) AS NumberOfReports
FROM HumanResources.Employee AS emp
JOIN HumanResources.Employee AS manager
    ON manager.OrganizationNode = emp.OrganizationNode.GetAncestor(1)
JOIN Person.Person AS p
    ON p.BusinessEntityID = manager.BusinessEntityID
GROUP BY manager.BusinessEntityID, p.FirstName, p.LastName
HAVING COUNT(emp.BusinessEntityID) > 4;