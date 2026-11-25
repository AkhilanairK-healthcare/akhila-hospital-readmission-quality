SELECT state, COUNT(excess_readmission_ratio) AS hospital_measures,
  ROUND(AVG(excess_readmission_ratio), 4) AS avg_err
FROM fact_readmissions GROUP BY state
HAVING hospital_measures >= 100 ORDER BY avg_err DESC LIMIT 15;
