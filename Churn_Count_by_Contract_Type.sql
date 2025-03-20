SELECT 
    CASE 
        WHEN `Contract_month-to-month` = 1 THEN 'Month-to-Month'
        WHEN contract_one_year = 1 THEN 'One Year'
        WHEN contract_two_year = 1 THEN 'Two Year'
    END AS contract_type,
    COUNT(*) AS customer_count
FROM `customer-churn-451414.customer_churn_data.customer_churn`
WHERE churn = 1  -- 🔹 Only include churned customers
GROUP BY contract_type;
