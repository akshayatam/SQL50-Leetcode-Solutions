SELECT e.name AS name, b.bonus
FROM Employee e 
LEFT JOIN Bonus b USING (empId) 
WHERE b.bonus IS NULL OR b.bonus < 1000