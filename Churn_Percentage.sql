WITH churn_summary AS (
    SELECT 
        Churn, 
        COUNT(*) AS customer_count
    FROM `customer-churn-451414.customer_churn_data.customer_churn`
    GROUP BY Churn
)
SELECT 
    Churn, 
    customer_count, 
    customer_count * 100.0 / SUM(customer_count) OVER () AS churn_percentage
FROM churn_summary;
