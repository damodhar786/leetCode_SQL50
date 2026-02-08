/* Write your T-SQL query statement below */
SELECT today.id
FROM weather today
JOIN weather yesterday
ON DATEDIFF(day, yesterday.recordDate, today.recordDate) = 1
WHERE today.temperature > yesterday.temperature