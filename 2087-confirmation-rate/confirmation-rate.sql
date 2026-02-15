/* Write your T-SQL query statement below */
SELECT 
    si.user_id,
    ROUND(
        CASE 
            WHEN COUNT(con.action) = 0 THEN 0
            ELSE   
                SUM(
                    CASE WHEN con.action = 'confirmed' THEN 1 ELSE 0 END
                ) * 1.0 / COUNT(con.action)            
        END,
    2) AS confirmation_rate
FROM Signups si
LEFT JOIN Confirmations con
    ON si.user_id = con.user_id
GROUP BY si.user_id
