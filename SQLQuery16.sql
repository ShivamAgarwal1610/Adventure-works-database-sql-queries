--15. get a list of all managers and the total number of employees who report to them

SELECT mgr.BusinessEntityID AS ManagerID, 
pp.FirstName + ' ' + pp.LastName AS ManagerName, COUNT(emp.BusinessEntityID) AS NumberOfEmployees
FROM HumanResources.Employee emp
JOIN HumanResources.Employee mgr ON emp.OrganizationNode.GetAncestor(1) = mgr.OrganizationNode
JOIN Person.Person pp ON mgr.BusinessEntityID = pp.BusinessEntityID
GROUP BY mgr.BusinessEntityID, pp.FirstName, pp.LastName
ORDER BY NumberOfEmployees DESC;


