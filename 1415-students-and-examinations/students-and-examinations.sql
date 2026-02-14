/* Write your T-SQL query statement below */
SELECT 
    s.student_id, 
    s.student_name, 
    sub.subject_name, 
    COUNT(e.subject_name) attended_exams
FROM Students s
CROSS JOIN Subjects sub
LEFT JOIN Examinations e
    ON s.student_id = e.student_id
    AND e.subject_name = sub.subject_name
GROUP BY 
    sub.subject_name, 
    s.student_id, 
    s.student_name
ORDER BY 
    student_id,
    subject_name
