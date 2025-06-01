-- 24. List of employee firstname , lastname , superviser firstname , superviser lastname

SELECT emp_p.FirstName AS EmployeeFirstName,emp_p.LastName AS EmployeeLastName,
mgr_p.FirstName AS ManagerFirstName, mgr_p.LastName AS ManagerLastName
FROM HumanResources.Employee AS emp
JOIN Person.Person AS emp_p
    ON emp.BusinessEntityID = emp_p.BusinessEntityID
JOIN HumanResources.Employee AS mgr
    ON emp.OrganizationNode.GetAncestor(1) = mgr.OrganizationNode
JOIN Person.Person AS mgr_p
    ON mgr.BusinessEntityID = mgr_p.BusinessEntityID;


