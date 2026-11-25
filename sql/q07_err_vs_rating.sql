SELECT h.hospital_overall_rating, COUNT(*) AS hospital_measures,
  ROUND(AVG(f.excess_readmission_ratio), 4) AS avg_err
FROM fact_readmissions f JOIN dim_hospital h ON f.facility_id = h.facility_id
WHERE h.hospital_overall_rating IS NOT NULL
GROUP BY h.hospital_overall_rating ORDER BY h.hospital_overall_rating;
