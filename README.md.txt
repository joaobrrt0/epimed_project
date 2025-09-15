# ICU Patient Outcome Analysis

## Project Overview

This project performs a dual analysis on a dataset of 10,000 ICU patient admissions to identify the key factors influencing two critical outcomes: **patient mortality** and **length of stay (LOS)**. The analysis combines statistical modeling in R with visual analytics in Power BI to provide a comprehensive view of patient risk and recovery profiles.

---

## Tools and Methodologies

* **R:** Used for data cleaning, preparation, and statistical modeling. A **logistic regression model (`glm`)** was built to identify the most significant predictors of patient mortality.
* **Power BI:** Used to create a multi-page interactive dashboard for visual analysis. The dashboard calculates key performance indicators (KPIs) and explores the factors driving patient length of stay.
* **DAX:** Used within Power BI to create the calculated measures for the KPIs.

---

## Key Findings

### 1. Patient Survival
The statistical model revealed that the most significant factors predicting patient mortality are:
* **Age:** For every additional year of age, the odds of a negative outcome increase by approximately 5%.
* **Highest Heart Rate:** A higher maximum heart rate is strongly associated with an increased risk of mortality.
* **Gender:** Male patients were found to have nearly double the odds of dying compared to female patients, even after accounting for other factors.

### 2. Patient Length of Stay (Recovery Time)
The Power BI dashboard provided the following insights into how long patients stay in the ICU:
* **Key Metrics:** 5.1% of patients require prolonged care for over 30 days.
* **Physiological Impact:** A **higher maximum heart rate** was the variable most clearly correlated with a longer stay in the ICU.
* **Patient Cohorts:** The dashboard allows for interactive filtering to compare the LOS distributions for specific groups, such as patients with hypertension or diabetes.

---

## How to Run This Project

1.  **Prerequisites:** You will need R, RStudio, and Power BI Desktop installed.
2.  **Data:** The `data/` folder contains the necessary files: `dataset` (raw data), `cleaned_data`, and the `dashboard` Power BI file.
3.  **R Analysis:** Open the `R_Scripts/` folder and run the scripts in order:
    * `load_and_clean.R`
    * `exploratory_analysis.R`
    * `modeling.R`
4.  **Power BI Dashboard:** Open the `dashboard.pbix` file from the `data/` folder in Power BI Desktop to view the interactive report.