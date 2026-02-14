/* Write your T-SQL query statement below */
SELECT m.name
FROM employee e
JOIN employee m
ON e.managerId = m.id
GROUP BY m.id, m.name
HAVING COUNT(e.id) >= 5;

