/* Write your T-SQL query statement below */
SELECT e.employee_id, e.name, COUNT(*) reports_count, ROUND(AVG(r.age * 1.0),0) average_age
FROM Employees e
JOIN employees r
ON e.employee_id = r.reports_to
GROUP BY e.employee_id, e.name
ORDER BY e.employee_id