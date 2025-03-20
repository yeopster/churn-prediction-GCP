SELECT 
    CASE 
        WHEN PaymentMethod_electronic_check  = 1 THEN 'Electronic Check'
        WHEN PaymentMethod_mailed_check = 1 THEN 'Mail Check'
        WHEN PaymentMethod_bank_transfer__automatic_ = 1 THEN 'Bank Transfer'
        WHEN PaymentMethod_credit_card__automatic_ = 1 THEN 'Credit Card'
    END AS payment_method,
    COUNT(*) AS customer_count,
    SUM(churn) AS churn_count,
    SUM(churn) * 100.0 / COUNT(*) AS churn_rate
FROM `customer-churn-451414.customer_churn_data.customer_churn`
GROUP BY payment_method;
