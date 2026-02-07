/* Write your T-SQL query statement below */
SELECT euni.unique_id, emp.name
FROM Employees emp
LEFT JOIN EmployeeUNI euni
ON emp.id = euni.id