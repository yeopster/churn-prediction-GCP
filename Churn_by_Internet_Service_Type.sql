SELECT 
    CASE 
        WHEN InternetService_dsl = 1 THEN 'DSL'
        WHEN InternetService_fiber_optic = 1 THEN 'Fibre Optic'
        WHEN InternetService_no = 1 THEN 'No Internet'
    END AS internet_service_type,
    COUNT(*) AS customer_count,
    SUM(churn) AS churn_count,
    SUM(churn) * 100.0 / COUNT(*) AS churn_rate
FROM `customer-churn-451414.customer_churn_data.customer_churn`
GROUP BY internet_service_type;
