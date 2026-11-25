SELECT condition, COUNT(*) AS rows_total,
  SUM(CASE WHEN excess_readmission_ratio IS NULL THEN 1 ELSE 0 END) AS rows_missing_err,
  ROUND(100.0 * SUM(CASE WHEN excess_readmission_ratio IS NULL THEN 1 ELSE 0 END) / COUNT(*), 1) AS pct_missing
FROM fact_readmissions GROUP BY condition ORDER BY pct_missing DESC;
