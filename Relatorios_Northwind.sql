-- 1. Total revenues for 1997
SELECT 
    SUM(od.quantity * od.unit_price * (1.0 - od.discount)) AS total_revenues_1997
FROM 
    orders o
JOIN 
    order_details od ON o.order_id = od.order_id
WHERE 
    EXTRACT(YEAR FROM o.order_date) = 1997;


-- 2. Monthly growth and YTD values analysis
-- WITH monthly_sales AS (
--     SELECT 
--         DATE_TRUNC('month', o.order_date) AS month,
--         SUM(od.quantity * od.unit_price) AS monthly_total
--     FROM 
--         orders o
--     JOIN 
--         order_details od ON o.order_id = od.order_id
--     GROUP BY 
--         DATE_TRUNC('month', o.order_date)
-- ),
-- cumulative_sales AS (
--     SELECT 
--         month,
--         monthly_total,
--         SUM(monthly_total) OVER (ORDER BY month) AS ytd_total
--     FROM 
--         monthly_sales
-- )
-- SELECT 
--     month,
--     monthly_total,
--     LAG(monthly_total) OVER (ORDER BY month) AS previous_month_total,
--     (monthly_total - LAG(monthly_total) OVER (ORDER BY month)) / NULLIF(LAG(monthly_total) OVER (ORDER BY month), 0) AS monthly_growth,
--     ytd_total
-- FROM 
--     cumulative_sales
-- ORDER BY 
--     month;

