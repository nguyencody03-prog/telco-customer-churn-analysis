SELECT
  CASE
  WHEN PaymentMethod= 'Bank transfer (automatic)'
  OR PaymentMethod= 'Credit card (automatic)'
  THEN 'Automatic Payment'
  ELSE 'Manual Payment'
  END AS Payment_Group,

  COUNT(*) AS total_customers,
  COUNTIF(Churn=True) AS churned_customers,
  ROUND(COUNTIF(Churn=TRUE)*100.0/COUNT(*),2) AS churn_rate
FROM `project-2-503601.portfolio_projects.Telco_Customer_Churn`
GROUP BY Payment_Group
ORDER BY churn_rate DESC;
