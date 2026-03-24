CREATE VIEW vw_fact_usage AS
SELECT
    u.usage_id,
    u.subscription_id,
    u.usage_date,
    u.feature_name,
    u.usage_count,
    u.usage_duration_secs,
    u.error_count,
    u.is_beta_feature,

    -- Bring account_id for easier modeling
    s.account_id

FROM stg_usage u

LEFT JOIN stg_subscriptions s
    ON u.subscription_id = s.subscription_id;