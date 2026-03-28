SELECT 'Low Salary' AS category,
       COUNT(CASE WHEN income < 20000 THEN 1 END) AS accounts_count
FROM Accounts

UNION ALL

SELECT 'Average Salary',
       COUNT(CASE WHEN income BETWEEN 20000 AND 50000 THEN 1 END)
FROM Accounts

UNION ALL

SELECT 'High Salary',
       COUNT(CASE WHEN income > 50000 THEN 1 END)
FROM Accounts;


-- /* Write your T-SQL query statement below */
-- WITH CTE1 AS (SELECT
--     *,
--     CASE 
--         WHEN income < 20000 THEN 'Low Salary'
--         WHEN income >= 20000 AND income < 50000 THEN 'Average Salary' ELSE 'High Salary'
--     END AS category
-- FROM Accounts)

-- SELECT 
--     category,
--     COUNT(*) AS accounts_count
-- FROM CTE1
-- GROUP BY category
