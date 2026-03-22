/* Write your T-SQL query statement below */
SELECT product_id,year first_year, quantity, price
FROM (SELECT
    *,
    RANK() OVER(PARTITION BY product_id ORDER BY year ASC) AS rnk
FROM Sales) s
WHERE rnk = 1