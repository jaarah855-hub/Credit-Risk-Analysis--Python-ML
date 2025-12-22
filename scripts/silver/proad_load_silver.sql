/*
==============================================================================
Stored Procedure: Load Silver Layer
==============================================================================

Script Purpose:
    This stored procedure performs the ETL (Extract, Transform, Load) process to
    populate the 'silver' schema tables from the 'bronze' schema.

Actions Performed:
    - Truncates Silver tables.
    - Remove columns that are identifiers with no analytical value or textual descriptions with no risk meaning.
    - Inserts transformed and cleansed data from Bronze into Silver tables.
============================================================================== 
*/
CREATE OR ALTER PROCEDURE silver.load_silver
AS
BEGIN
    TRUNCATE TABLE silver.loans_clean;

    INSERT INTO silver.loans_clean
    SELECT
        UPPER(LTRIM(RTRIM(loan_amount))),
        TRY_CAST(term AS INT),
        TRY_CAST(interest_rate AS FLOAT),
        TRY_CAST(installment AS FLOAT),

        UPPER(LTRIM(RTRIM(grade))),
        UPPER(LTRIM(RTRIM(sub_grade))),

        TRY_CAST(annual_income AS FLOAT),
        TRY_CAST(debt_to_income AS FLOAT),
        UPPER(LTRIM(RTRIM(verified_income))),

        UPPER(LTRIM(RTRIM(homeownership))),
        UPPER(LTRIM(RTRIM(state))),
        UPPER(LTRIM(RTRIM(application_type))),
        UPPER(LTRIM(RTRIM(loan_purpose))),

        TRY_CAST(delinq_2y AS INT),
        TRY_CAST(num_historical_failed_to_pay AS INT),

        TRY_CAST(total_credit_limit AS FLOAT),
        TRY_CAST(total_credit_utilized AS FLOAT),

        UPPER(LTRIM(RTRIM(loan_status))) AS loan_status_raw,

        CASE
            WHEN loan_status = 'Fully Paid' THEN 'PAID'
            WHEN loan_status IN ('Charged Off', 'Default') THEN 'DEFAULT'
            WHEN loan_status = 'Current' THEN 'CURRENT'
            WHEN loan_status IN ('In Grace Period', 'Late (16-30 days)') THEN 'DELINQUENT_EARLY'
            WHEN loan_status = 'Late (31-120 days)' THEN 'DELINQUENT_LATE'
            ELSE 'UNKNOWN'
        END AS loan_status_group,

        CASE
            WHEN loan_status IN ('Fully Paid', 'Charged Off', 'Default') THEN 'CLOSED'
            ELSE 'ACTIVE'
        END AS loan_outcome,

        CASE
            WHEN loan_status IN ('Charged Off', 'Default') THEN 1
            WHEN loan_status = 'Fully Paid' THEN 0
            ELSE NULL
        END AS default_flag,

        TRY_CAST(balance AS FLOAT),
        TRY_CAST(paid_total AS FLOAT)

    FROM bronze.loans_raw;
END;
GO
