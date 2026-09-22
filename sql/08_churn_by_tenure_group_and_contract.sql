SELECT
  CASE
  WHEN tenure <=12 THEN 'New'
  WHEN tenure <=36 THEN 'Established'
  ELSE 'Loyal'
  END AS Tenure_Group,
Contract,
COUNT(*) AS total_customers,
COUNTIF(Churn=True) AS churned_customers,
ROUND(COUNTIF(Churn=True)*100.0/COUNT(*),2) AS churn_rate

FROM `project-2-503601.portfolio_projects.Telco_Customer_Churn`
GROUP BY Tenure_Group, Contract
ORDER BY churn_rate DESC;
