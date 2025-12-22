/*
==============================================================================
DDL Script: Create Silver Table
==============================================================================

Script Purpose:
    Creates the Silver table containing cleaned and standardized loan data.
============================================================================== 
*/

IF OBJECT_ID('silver.loans_clean', 'U') IS NOT NULL
    DROP TABLE silver.loans_clean;
GO

CREATE TABLE silver.loans_clean (
    loan_amount VARCHAR(50),
    term INT,
    interest_rate FLOAT,
    installment FLOAT,

    grade VARCHAR(10),
    sub_grade VARCHAR(10),

    annual_income FLOAT,
    debt_to_income FLOAT,
    verified_income VARCHAR(20),

    homeownership VARCHAR(20),
    state CHAR(100),
    application_type VARCHAR(20),
    loan_purpose VARCHAR(50),

    delinq_2y INT,
    num_historical_failed_to_pay INT,

    total_credit_limit FLOAT,
    total_credit_utilized FLOAT,

    loan_status_raw VARCHAR(50),
    loan_status_group VARCHAR(30),
    loan_outcome VARCHAR(10),

    default_flag INT,

    balance FLOAT,
    paid_total FLOAT
);
GO
