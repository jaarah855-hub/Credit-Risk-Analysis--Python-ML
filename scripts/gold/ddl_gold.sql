-- Gold layer: full loan performance table with categorized risk
IF OBJECT_ID('gold.loans_final', 'U') IS NOT NULL
    DROP TABLE gold.loans_final;
GO

CREATE TABLE gold.loans_final (
    loan_amount FLOAT,
    term INT,
    interest_rate FLOAT,
    installment FLOAT,
    
    grade VARCHAR(50),
    sub_grade VARCHAR(50),
    
    annual_income FLOAT,
    debt_to_income FLOAT,
    verified_income VARCHAR(20),
    
    homeownership VARCHAR(20),
    state VARCHAR(50),
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
    paid_total FLOAT,
    
    risk_level VARCHAR(10)          
);
GO
