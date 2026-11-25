# Key findings - Hospital Readmission and Quality Analysis
1. Readmissions sit near the benchmark overall: mean ERR is
   1.0011 to 1.0040 across all six conditions, and 46.8% to
   49.9% of hospitals sit above 1.0 in each condition - so the
   story is variation between hospitals, not a system-wide
   failure.
2. CABG is the thinnest measure: 2,177 of 3,055 hospitals
   (71.3%) have no CABG ERR, leaving only 878 hospitals
   behind the CABG numbers. Pneumonia is the most complete
   measure (only 340 missing, 11.1%). Any CABG ranking
   should be read with that small base in mind.
3. Two states stand out: Massachusetts averages 1.0344
   (240 measures) and New Jersey 1.0277 (272 measures) -
   the highest state averages with 100+ measures.
4. Ownership goes with readmissions: Proprietary hospitals
   average 1.0171 (highest), Physician-owned hospitals
   0.9577 (lowest). The HRRP file covers Acute Care
   Hospitals only, so there is no other hospital type
   to compare against.
5. Higher-rated hospitals readmit less: 1-star hospitals
   average 1.0484, falling step by step to 0.9663 for
   5-star hospitals. Ratings and readmissions move together.
6. Small hospitals vary the most: in the Heart Failure
   scatter, small hospitals spread from about 0.7 to 1.37,
   while large hospitals cluster close to 1.0. A very high
   ERR at a small hospital (for example Fairfield Medical
   Center, Hip/Knee Replacement 1.6297, with its counts
   hidden) is a flag to check, not a final verdict.
Method note: every figure above is reproduced by the queries in
sql/ (q01-q10) and cross-checked in notebooks/02. Missing ERRs
were never turned into zero; 222 rows (1.2%) have no hospital
file match and show blank hospital info in the dashboard.
