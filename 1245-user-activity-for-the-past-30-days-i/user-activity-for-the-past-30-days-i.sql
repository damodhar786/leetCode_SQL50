/* Write your T-SQL query statement below */
SELECT 
    activity_date AS day,
    COUNT(DISTINCT user_id) AS active_users
FROM Activity
WHERE activity_date BETWEEN '2019-06-28' AND '2019-07-27'
  AND CASE 
        WHEN activity_type = 'open_session' THEN 1
        WHEN activity_type = 'end_session' THEN 1
        WHEN activity_type = 'scroll_down' THEN 1
        WHEN activity_type = 'send_message' THEN 1
        ELSE 0
      END = 1
GROUP BY activity_date;