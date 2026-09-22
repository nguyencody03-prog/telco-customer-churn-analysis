SELECT
Contract,
InternetService,
COUNT(*) AS total_customers,
COUNTIF(Churn=True) AS churned_customers,
ROUND(COUNTIF(Churn=True)*100.0/COUNT(*),2) AS churn_rate
FROM `project-2-503601.portfolio_projects.Telco_Customer_Churn`

GROUP BY Contract, InternetService
HAVING COUNT(*) >=20
ORDER BY churn_rate DESC;
