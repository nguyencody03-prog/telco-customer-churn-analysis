SELECT
  CASE
  WHEN MonthlyCharges <40 THEN 'Low'
  WHEN MonthlyCharges <80 THEN 'Medium'
  ELSE 'High'
  END AS Monthly_Charge_Group,
  COUNT(*) AS total_customers,
  COUNTIF(Churn=True) AS churned_customers,
  ROUND(COUNTIF(Churn=True)*100.0/COUNT(*),2) AS churn_rate

FROM `project-2-503601.portfolio_projects.Telco_Customer_Churn`
GROUP BY Monthly_Charge_Group
ORDER BY churn_rate DESC;
