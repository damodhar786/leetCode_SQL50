/* Write your T-SQL query statement below */
SELECT
    class
FROM (SELECT 
    COUNT(student) as student_count,
    class
FROM Courses
GROUP BY Class) c
WHERE student_count >= 5

