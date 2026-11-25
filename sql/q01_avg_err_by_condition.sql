SELECT condition, COUNT(excess_readmission_ratio) AS hospitals_with_data,
  ROUND(AVG(excess_readmission_ratio), 4) AS avg_err
FROM fact_readmissions GROUP BY condition ORDER BY avg_err DESC;
