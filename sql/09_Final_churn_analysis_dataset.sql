SELECT
  customerID,
  gender,
  SeniorCitizen,
  Partner,
  Dependents,
  tenure,
  Contract,
  PaymentMethod,
  InternetService,
  MonthlyCharges,
  TotalCharges,
  Churn,

  CASE
    WHEN tenure <= 12 THEN 'New'
    WHEN tenure <= 36 THEN 'Established'
    ELSE 'Loyal'
  END AS Tenure_Group,

  CASE
    WHEN MonthlyCharges < 40 THEN 'Low'
    WHEN MonthlyCharges < 80 THEN 'Medium'
    ELSE 'High'
  END AS Monthly_Charge_Group,

  CASE
    WHEN PaymentMethod IN (
      'Bank transfer (automatic)',
      'Credit card (automatic)'
    )
    THEN 'Automatic Payment'
    ELSE 'Manual Payment'
  END AS Payment_Group

FROM `project-2-503601.portfolio_projects.Telco_Customer_Churn`;
