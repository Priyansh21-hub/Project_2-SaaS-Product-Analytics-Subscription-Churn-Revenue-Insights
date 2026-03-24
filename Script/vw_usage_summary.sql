CREATE VIEW vw_usage_summary AS
SELECT
    subscription_id,
    COUNT(DISTINCT usage_date) AS active_days,
    SUM(usage_count) AS total_usage,
    SUM(usage_duration_secs) AS total_duration,
    SUM(error_count) AS total_errors
FROM stg_usage
GROUP BY subscription_id;