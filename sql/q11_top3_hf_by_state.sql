-- Q11: Top 3 Heart Failure hospitals in each state by ERR (window function)
-- RANK() gives each hospital a rank inside its own state, worst ERR first.
-- The outer query keeps only rank 1-3, so we get the 3 worst HF hospitals per state.
SELECT facility_name, state, excess_readmission_ratio, state_rank
FROM (
    SELECT
        facility_name,
        state,
        excess_readmission_ratio,
        RANK() OVER (PARTITION BY state ORDER BY excess_readmission_ratio DESC) AS state_rank
    FROM fact_readmissions
    WHERE condition = 'Heart Failure'
      AND excess_readmission_ratio IS NOT NULL
)
WHERE state_rank <= 3
ORDER BY state, state_rank;
