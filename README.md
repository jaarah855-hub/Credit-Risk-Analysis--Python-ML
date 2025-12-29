# Credit Risk Portfolio Analysis Project

Welcome to the Credit Risk Portfolio Analysis repository 📊
This project is a data analytics portfolio project focused on credit risk analysis for a portfolio of funded loans.

The objective is to analyze portfolio risk, expected losses, pricing signals, and tail risk using a realistic analytics workflow that combines data warehousing, Python analysis, and BI visualization.

## 📌 Project Overview

This project analyzes a dataset of 10,000 funded loans to understand:

How risk is distributed across the portfolio

Which borrower segments contribute most to losses

How expected losses behave under different scenarios

What pricing signals can be inferred from risk metrics

The project focuses on post-origination analysis and portfolio monitoring rather than loan approval.

## 🎯 Objectives

Measure Probability of Default (PD) and Expected Loss (EL)

Analyze loss distributions and tail risk

Run simulations to understand portfolio behavior under uncertainty

Derive pricing signals based on risk and expected losses

Prepare data for BI reporting

## 🏗️ Data Architecture (Bronze / Silver / Gold)

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

## 🧠 Data Analysis (Python)

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

## ✅ Why this project

This project was built to:

Practice portfolio-level credit risk analysis

Apply statistics to real financial risk problems

Demonstrate an end-to-end analytics workflow

Showcase skills relevant to data analytics and risk-focused internships
