# 📊 Credit Risk Portfolio Analysis

Expected Loss, Tail Risk & Pricing Signals (10,000 Loans)

## 📌 Project Overview

This project analyzes a large portfolio of funded loans with the objective of understanding credit risk at both loan-level and portfolio-level.

Rather than focusing on loan approval (pre-origination), the project answers post-origination business questions, such as:

How risky is the portfolio?

Where do losses come from?

Which borrower segments drive tail risk?

How can pricing and risk signals be improved?

The project is structured end-to-end, from data warehousing (Bronze / Silver / Gold) to statistical analysis in Python and business-oriented visualization in Power BI.

## 🎯 Business Objectives

Measure portfolio credit risk

Default rates

Expected Loss (EL)

Loss distribution and tail behavior

Identify risk drivers

Income, utilization, installment burden

Loan grade and borrower characteristics

Provide actionable insights

Segment-level risk signals

Pricing and monitoring implications

Portfolio-level decision support

## Data Architecture (Bronze / Silver / Gold)

This project uses a simple Medallion Architecture, aligned with the actual implementation.

### 🟫 Bronze Layer — Raw Data

Raw loan dataset loaded as-is

No transformation or cleaning

Purpose: Preserve original data for reference.

### 🟪 Silver Layer — Cleaned Data

Basic data cleaning:

Handling missing values

Removing invalid or inconsistent records

Minor standardization of variables

Purpose: Ensure data quality for analysis.

### 🟨 Gold Layer — Analysis Dataset

Subset of the Silver layer

Columns required for analysis and visualization only

No additional aggregation or modeling

Purpose: Provide a clean, analysis-ready dataset for Python and Power BI.

👉 Note: Aggregations and modeling are intentionally performed in Python, not in the warehouse.

## Data Analysis (Python)

The core analysis is performed in Python using Jupyter Notebook.

### Key analytical steps:

Exploratory Data Analysis (EDA)

Credit risk metrics:

Probability of Default (PD)

Expected Loss (EL)

Monte Carlo–style simulations to assess portfolio loss behavior

Tail risk analysis (loss concentration, extreme outcomes)

Pricing signals based on risk-adjusted metrics

Logistic regression to understand default drivers

The emphasis is on interpretability and reasoning, not model complexity.

### 📊 Visualization (Power BI)

The Gold layer is used as the data source for Power BI.

The dashboard focuses on:

Portfolio-level risk overview

Expected Loss by segment

Risk concentration and tail exposure

Comparison across loan grades and borrower profiles

The goal is to translate analytical results into clear, business-oriented visuals.

## 🛠️ Tools & Technologies

Python (pandas, numpy, matplotlib, scikit-learn)

SQL (basic data preparation)

Power BI

Jupyter Notebook

GitHub

## Why this project

This project was built to:

Practice portfolio-level credit risk analysis

Apply statistics to real financial risk problems

Demonstrate an end-to-end analytics workflow

Showcase skills relevant to risk-focused analysis
