SELECT 
    visited_on,
    amount,
    average_amount
FROM (
    SELECT 
        visited_on,
        SUM(amt_per_day) OVER (
            ORDER BY visited_on
            ROWS BETWEEN 6 PRECEDING AND CURRENT ROW
        ) AS amount,
        
        COUNT(*) OVER (
            ORDER BY visited_on
            ROWS BETWEEN 6 PRECEDING AND CURRENT ROW
        ) AS cnt,

        ROUND(
            AVG(amt_per_day * 1.0) OVER (
                ORDER BY visited_on
                ROWS BETWEEN 6 PRECEDING AND CURRENT ROW
            ), 2
        ) AS average_amount
    FROM (
        SELECT 
            visited_on,
            SUM(amount) AS amt_per_day
        FROM Customer
        GROUP BY visited_on
    ) t
) x
WHERE cnt = 7
ORDER BY visited_on;