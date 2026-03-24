CREATE VIEW vw_dim_plan AS
SELECT DISTINCT
    plan_tier,
    billing_frequency
FROM stg_subscriptions;