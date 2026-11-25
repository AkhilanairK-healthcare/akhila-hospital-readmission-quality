SELECT facility_name, state, number_of_discharges,
  excess_readmission_ratio, number_of_readmissions
FROM fact_readmissions
WHERE condition = 'COPD' AND excess_readmission_ratio IS NOT NULL
ORDER BY excess_readmission_ratio DESC LIMIT 15;
