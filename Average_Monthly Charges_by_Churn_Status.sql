SELECT 
    Churn, 
    AVG(MonthlyCharges) AS avg_monthly_charges,
    AVG(TotalCharges) AS avg_total_charges
FROM `customer-churn-451414.customer_churn_data.customer_churn`
GROUP BY Churn;
