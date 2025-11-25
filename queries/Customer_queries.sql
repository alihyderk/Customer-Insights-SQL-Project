
SELECT
    Most_Frequent_Category AS product_category,
    ROUND(SUM(Lifetime_Value), 2) AS total_revenue
FROM sales_and_customer_insights
GROUP BY Most_Frequent_Category
ORDER BY total_revenue DESC;


SELECT
    Region,
    COUNT(Customer_ID) AS total_customers
FROM sales_and_customer_insights
GROUP BY Region
ORDER BY total_customers DESC;


SELECT 
    Customer_ID,
    Lifetime_Value,
    Most_Frequent_Category,
    Region
FROM sales_and_customer_insights
ORDER BY Lifetime_Value DESC
LIMIT 10;


SELECT 
    Region,
    ROUND(AVG(Churn_Probability), 3) AS avg_churn_probability,
    COUNT(Customer_ID) AS total_customers
FROM sales_and_customer_insights
GROUP BY Region
ORDER BY avg_churn_probability DESC;


SELECT 
    Retention_Strategy,
    COUNT(Customer_ID) AS customers_using_strategy,
    ROUND(AVG(Lifetime_Value), 2) AS avg_lifetime_value,
    ROUND(AVG(Churn_Probability), 3) AS avg_churn_probability
FROM sales_and_customer_insights
GROUP BY Retention_Strategy
ORDER BY avg_lifetime_value DESC;


SELECT 
    Purchase_Frequency,
    ROUND(AVG(Lifetime_Value), 2) AS avg_lifetime_value,
    COUNT(Customer_ID) AS total_customers
FROM sales_and_customer_insights
GROUP BY Purchase_Frequency
ORDER BY Purchase_Frequency DESC;


SELECT 
    Season,
    COUNT(Customer_ID) AS total_customers,
    ROUND(AVG(Lifetime_Value), 2) AS avg_lifetime_value
FROM sales_and_customer_insights
GROUP BY Season
ORDER BY total_customers DESC;


SELECT 
    Preferred_Purchase_Times,
    COUNT(Customer_ID) AS total_customers,
    ROUND(AVG(Lifetime_Value), 2) AS avg_lifetime_value
FROM sales_and_customer_insights
GROUP BY Preferred_Purchase_Times
ORDER BY total_customers DESC;


SELECT 
    Region,
    ROUND(SUM(Lifetime_Value), 2) AS total_revenue,
    ROUND(AVG(Lifetime_Value), 2) AS avg_lifetime_value,
    COUNT(Customer_ID) AS total_customers
FROM sales_and_customer_insights
GROUP BY Region
ORDER BY total_revenue DESC;


SELECT 
    Customer_ID,
    Lifetime_Value,
    CASE
        WHEN Lifetime_Value >= 1000 THEN 'High Value'
        WHEN Lifetime_Value BETWEEN 500 AND 999 THEN 'Medium Value'
        ELSE 'Low Value'
    END AS customer_segment,
    Region,
    Most_Frequent_Category
FROM sales_and_customer_insights
ORDER BY Lifetime_Value DESC;


SELECT 
    Most_Frequent_Category,
    ROUND(AVG(Time_Between_Purchases), 1) AS avg_days_between_purchases
FROM sales_and_customer_insights
GROUP BY Most_Frequent_Category
ORDER BY avg_days_between_purchases ASC;


SELECT
    Purchase_Frequency,
    ROUND(AVG(Lifetime_Value), 2) AS avg_ltv
FROM sales_and_customer_insights
GROUP BY Purchase_Frequency
ORDER BY Purchase_Frequency DESC;


SELECT
    Retention_Strategy,
    ROUND(AVG(Churn_Probability), 3) AS avg_churn_probability,
    ROUND(AVG(Lifetime_Value), 2) AS avg_lifetime_value,
    COUNT(Customer_ID) AS total_customers
FROM sales_and_customer_insights
GROUP BY Retention_Strategy
ORDER BY avg_churn_probability ASC;


SELECT 
    Customer_ID,
    Churn_Probability,
    Lifetime_Value,
    Region,
    Most_Frequent_Category
FROM sales_and_customer_insights
ORDER BY Churn_Probability DESC
LIMIT 10;


SELECT 
    Season,
    ROUND(AVG(Churn_Probability), 3) AS avg_churn,
    COUNT(Customer_ID) AS total_customers
FROM sales_and_customer_insights
GROUP BY Season
ORDER BY avg_churn DESC;
























