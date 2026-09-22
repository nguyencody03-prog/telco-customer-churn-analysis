SELECT 
COUNT(*) AS total_customers,
COUNTIF(Churn=TRUE) AS churned_customers,
COUNTIF(Churn = TRUE) * 100/
COUNT(*) AS churn_rate
FROM `project-2-503601.portfolio_projects.Telco_Customer_Churn`;
