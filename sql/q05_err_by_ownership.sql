SELECT h.hospital_ownership, COUNT(*) AS hospital_measures,
  ROUND(AVG(f.excess_readmission_ratio), 4) AS avg_err
FROM fact_readmissions f JOIN dim_hospital h ON f.facility_id = h.facility_id
GROUP BY h.hospital_ownership ORDER BY avg_err DESC;
