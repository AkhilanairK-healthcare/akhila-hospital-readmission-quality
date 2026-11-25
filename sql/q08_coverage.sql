SELECT COUNT(DISTINCT facility_id) AS hospitals_in_hrrp,
  COUNT(*) AS hospital_measure_rows,
  COUNT(excess_readmission_ratio) AS rows_with_err
FROM fact_readmissions;
