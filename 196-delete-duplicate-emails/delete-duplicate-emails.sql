/* Write your T-SQL query statement below */
DELETE FROM person
WHERE ID NOT IN(
    SELECT MIN(ID)
    FROM Person
    GROUP BY email
)