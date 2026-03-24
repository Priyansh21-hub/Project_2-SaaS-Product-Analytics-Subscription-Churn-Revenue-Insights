CREATE VIEW vw_dim_account AS
SELECT DISTINCT
    account_id,
    industry,
    country,
    signup_date,
    referral_source
FROM stg_accounts;