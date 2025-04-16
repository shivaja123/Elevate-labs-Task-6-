SELECT
    EXTRACT(YEAR FROM order_date) AS year,
    EXTRACT(MONTH FROM order_date) AS month,
    SUM(price * (1-discount_amount)) AS revenue,
    COUNT(DISTINCT order_date) AS volume
FROM
    sales
WHERE
    order_date BETWEEN '2020-01-01' AND '2021-12-31'
GROUP BY
    EXTRACT(YEAR FROM order_date),
    EXTRACT(MONTH FROM order_date)
ORDER BY
    year ASC,
    month ASC;
