select * from emple;
SELECT
    EXTRACT(YEAR  FROM order_date) AS order_year,
    EXTRACT(MONTH FROM order_date) AS order_month,
    round(sum(revenue),2)                  AS total_revenue,
    COUNT(DISTINCT order_id)        AS order_volume,
    ROUND(SUM(revenue) / COUNT(DISTINCT order_id), 2) AS avg_order_value
FROM emple
GROUP BY
    EXTRACT(YEAR  FROM order_date),
    EXTRACT(MONTH FROM order_date)
ORDER BY
    order_year, order_month;
