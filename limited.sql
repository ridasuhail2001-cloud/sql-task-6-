SELECT
    EXTRACT(YEAR  FROM order_date) AS order_year,
    EXTRACT(MONTH FROM order_date) AS order_month,
	round(SUM(revenue),2)                    AS total_revenue,
    COUNT(DISTINCT order_id)        AS order_volume
FROM emple
GROUP BY
    EXTRACT(YEAR  FROM order_date),
    EXTRACT(MONTH FROM order_date)
ORDER BY
    total_revenue DESC
LIMIT 10;