SELECT eu.unique_id, e.name 
FROM Employees e 
LEFT JOIN EmployeeUNI eu USING (id)