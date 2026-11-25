SELECT condition, COUNT(excess_readmission_ratio) AS hospitals_with_data,
  ROUND(100.0 * AVG(above_benchmark), 1) AS pct_above_benchmark
FROM fact_readmissions GROUP BY condition ORDER BY pct_above_benchmark DESC;
