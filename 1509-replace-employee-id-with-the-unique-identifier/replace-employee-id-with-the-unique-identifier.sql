/* Write your T-SQL query statement below */
SELECT
    euni.unique_id unique_id,
    emp.name name
FROM EmployeeUNI euni
RIGHT JOIN Employees emp
ON euni.id = emp.id
ORDER BY emp.name ASC