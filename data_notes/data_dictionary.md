# Data dictionary — Project 2: Hospital Readmissions and Quality

## Sources
- CMS Provider Data Catalog (data.cms.gov)
- File 1: Hospital Readmissions Reduction Program (HRRP) — saved as hrrp.csv
- File 2: Hospital General Information — saved as hospital_general.csv

## Join key
- Facility ID joins the two files. One row per hospital per measure in hrrp.csv.

## HRRP period
- 07/01/2021 to 06/30/2024

## Excess Readmission Ratio (ERR)
- ERR = predicted readmissions / expected readmissions.
- Above 1.0 = worse than the national benchmark.
- Below 1.0 = better than the national benchmark.
- Exactly 1.0 = as expected.

## The six measures (Measure Name codes)
- READM-30-HF-HRRP — Heart Failure
- READM-30-PN-HRRP — Pneumonia
- READM-30-AMI-HRRP — Heart Attack (AMI)
- READM-30-COPD-HRRP — COPD
- READM-30-HIP-KNEE-HRRP — Hip/Knee Replacement
- READM-30-CABG-HRRP — CABG (Bypass Surgery)

## Missing values rule
- "Not Available", "N/A" and "Too Few to Report" mean missing — never turn them into 0.
- A hospital with too few cases is not a hospital with zero readmissions.
