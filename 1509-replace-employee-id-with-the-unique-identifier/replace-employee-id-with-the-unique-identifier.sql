/* Write your T-SQL query statement below */
SELECT unique_id, name
FROM Employees emp
LEFT JOIN EmployeeUNI euni
ON emp.id = euni.id