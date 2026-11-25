SELECT facility_name, state, number_of_discharges, excess_readmission_ratio
FROM fact_readmissions
WHERE condition = 'Pneumonia' AND excess_readmission_ratio IS NOT NULL
  AND number_of_discharges >= 100
ORDER BY excess_readmission_ratio ASC LIMIT 15;
