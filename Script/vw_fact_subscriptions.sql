CREATE VIEW vw_fact_subscriptions AS
SELECT
    s.subscription_id,
    s.account_id,

    -- Dates
    s.start_date,
    s.end_date,

    -- Plan & billing
    s.plan_tier,
    s.billing_frequency,
    s.seats,

    -- Revenue
    s.mrr_amount,
    s.arr_amount,

    -- Flags
    s.is_trial,
    s.upgrade_flag,
    s.downgrade_flag,
    s.churn_flag,
    s.auto_renew_flag,

    -- Account attributes
    a.industry,
    a.country,
    a.signup_date,
    a.referral_source,

    -- Support metrics (aggregated)
    sm.total_tickets,
    sm.avg_resolution_time,
    sm.avg_first_response_time,
    sm.avg_satisfaction_score,
    sm.escalation_rate,

    -- Churn info (latest)
    c.churn_date,
    c.reason_code,
    c.refund_amount_usd,
    c.is_reactivation

FROM stg_subscriptions s

LEFT JOIN stg_accounts a
    ON s.account_id = a.account_id

LEFT JOIN vw_support_metrics sm
    ON s.account_id = sm.account_id

LEFT JOIN vw_churn_latest c
    ON s.account_id = c.account_id;