CREATE OR ALTER PROCEDURE gold.load_gold
AS
BEGIN
    TRUNCATE TABLE gold.loans_final;

    INSERT INTO gold.loans_final
    SELECT
        TRY_CAST(loan_amount AS FLOAT),
        term,
        interest_rate,
        installment,
        
        grade,
        sub_grade,
        
        annual_income,
        debt_to_income,
        verified_income,
        
        homeownership,
        state,
        application_type,
        loan_purpose,
        
        TRY_CAST(delinq_2y AS INT),
        num_historical_failed_to_pay,
        
        total_credit_limit,
        total_credit_utilized,
        
        loan_status_raw,
        loan_status_group,
        loan_outcome,
        
        default_flag,
        
        TRY_CAST(balance AS FLOAT),
        paid_total,
        
        CASE 
            WHEN loan_status_group = 'DEFAULT' THEN 'HIGH'
            WHEN loan_status_group = 'DELINQUENT_LATE' THEN 'HIGH'
            WHEN loan_status_group = 'DELINQUENT_EARLY' THEN 'MEDIUM'
            WHEN loan_status_group = 'CURRENT' THEN 'LOW'
            WHEN loan_status_group = 'PAID' THEN 'LOW'
            ELSE 'UNKNOWN'
        END AS risk_level
    FROM silver.loans_clean;
END;
GO
