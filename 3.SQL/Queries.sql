SELECT * FROM telecom_churn_analysis.telco_customer_churn_cleaned;

SELECT *
FROM telco_customer_churn_cleaned
LIMIT 10;

SELECT COUNT(*)
FROM telco_customer_churn_cleaned;

DESCRIBE telco_customer_churn_cleaned;

-- QUERY 1 — TOTAL CUSTOMERS & CHURNED CUSTOMERS 

SELECT 
    COUNT(*) AS total_customers,
    SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) AS churned_customers
FROM telco_customer_churn_cleaned;

-- QUERY 2 — OVERALL CHURN RATE

SELECT 
    ROUND(
        SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*),
        2
    ) AS churn_rate_percentage
FROM telco_customer_churn_cleaned;

-- QUERY 3 — Churn by Contract Type using SQL

SELECT 
    Contract,
    COUNT(*) AS total_customers,
    SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) AS churned_customers,
    ROUND(
        SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*),
        2
    ) AS churn_rate_percentage
FROM telco_customer_churn_cleaned
GROUP BY Contract;

-- QUERY 4 — REVENUE LOST DUE TO CHURN

SELECT
    COUNT(*) AS churned_customers,
    ROUND(SUM(MonthlyCharges), 2) AS monthly_revenue_lost,
    ROUND(SUM(TotalCharges), 2) AS historical_revenue_lost
FROM telco_customer_churn_cleaned
WHERE Churn = 'Yes';

-- Query 5 — Churn by Payment Method

SELECT
    PaymentMethod,
    COUNT(*) AS total_customers,
    SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) AS churned_customers,
    ROUND(
        SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*),
        2
    ) AS churn_rate
FROM telco_customer_churn_cleaned
GROUP BY PaymentMethod
ORDER BY churn_rate DESC;

-- QUERY 6 - Churn by Pricing Tier.

SELECT
    CASE
        WHEN MonthlyCharges < 35 THEN 'Low'
        WHEN MonthlyCharges BETWEEN 35 AND 70 THEN 'Medium'
        ELSE 'High'
    END AS charge_bucket,

    COUNT(*) AS total_customers,

    SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) AS churned_customers,

    ROUND(
        SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*),
        2
    ) AS churn_rate

FROM telco_customer_churn_cleaned

GROUP BY charge_bucket

ORDER BY churn_rate DESC;

-- QUERY 7 - Which high-value fiber customers are churning

SELECT
    customerID,
    InternetService,
    MonthlyCharges,
    Contract,
    Churn
FROM telco_customer_churn_cleaned

WHERE InternetService = 'Fiber optic'
AND MonthlyCharges > 80
AND Churn = 'Yes'

ORDER BY MonthlyCharges DESC;

-- QUERY 8 - Who are the TOP 10 highest-paying churned customers?

SELECT
    customerID,
    MonthlyCharges,
    TotalCharges,
    Contract,
    InternetService,
    Churn

FROM telco_customer_churn_cleaned

WHERE Churn = 'Yes'

ORDER BY MonthlyCharges DESC

LIMIT 10;

-- QUERY 9 - Which contract types have more than 100 churned customers

SELECT
    Contract,
    COUNT(*) AS total_customers,
    SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) AS churned_customers

FROM telco_customer_churn_cleaned

GROUP BY Contract

HAVING churned_customers > 100

ORDER BY churned_customers DESC;

-- Query: Executive Telecom Churn KPI Dashboard
-- Business Purpose: Generate key telecom business KPIs for executive-level reporting

SELECT
    COUNT(*) AS total_customers,
    SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) AS churned_customers,
    ROUND(
        SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*),
        2
    ) AS churn_rate_percentage,
    ROUND(SUM(MonthlyCharges), 2) AS total_monthly_revenue,
    ROUND(AVG(MonthlyCharges), 2) AS average_monthly_charge,
    ROUND(SUM(CASE WHEN Churn = 'Yes' THEN MonthlyCharges ELSE 0 END), 2)
    AS monthly_revenue_lost,
    ROUND(AVG(tenure), 2) AS average_customer_tenure

FROM telco_customer_churn_cleaned;

-- Query: Customers Paying Above Average Monthly Charges
-- Business Purpose: Identify premium customers paying above average telecom charges

SELECT
    customerID,
    MonthlyCharges,
    Contract,
    InternetService,
    Churn

FROM telco_customer_churn_cleaned

WHERE MonthlyCharges >
(
    SELECT AVG(MonthlyCharges)
    FROM telco_customer_churn_cleaned
)

ORDER BY MonthlyCharges DESC;

-- Query: Contract Types Performing Worse Than Overall Churn Rate
-- Business Purpose: Identify customer contract segments with churn rates above company average

SELECT
    Contract,

    COUNT(*) AS total_customers,

    SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) AS churned_customers,

    ROUND(
        SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*),
        2
    ) AS churn_rate

FROM telco_customer_churn_cleaned

GROUP BY Contract

HAVING churn_rate >
(
    SELECT
        ROUND(
            SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*),
            2
        )
    FROM telco_customer_churn_cleaned
)

ORDER BY churn_rate DESC;

-- Query: High-Risk Customer Segment Analysis
-- Business Purpose: Identify high-risk customer groups with elevated churn behavior

WITH customer_segments AS
(
    SELECT

        customerID,

        Contract,

        InternetService,

        MonthlyCharges,

        Churn,

        CASE
            WHEN MonthlyCharges < 35 THEN 'Low'
            WHEN MonthlyCharges BETWEEN 35 AND 70 THEN 'Medium'
            ELSE 'High'
        END AS charge_segment

    FROM telco_customer_churn_cleaned
)

SELECT

    charge_segment,

    Contract,

    InternetService,

    COUNT(*) AS total_customers,

    SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END)
    AS churned_customers,

    ROUND(
        SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*),
        2
    ) AS churn_rate

FROM customer_segments

GROUP BY
    charge_segment,
    Contract,
    InternetService

HAVING churn_rate > 30

ORDER BY churn_rate DESC;