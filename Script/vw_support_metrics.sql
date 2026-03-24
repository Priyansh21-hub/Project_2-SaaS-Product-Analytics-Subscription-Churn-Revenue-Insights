CREATE VIEW vw_support_metrics AS
SELECT
    account_id,
    COUNT(ticket_id) AS total_tickets,
    AVG(resolution_time_hours) AS avg_resolution_time,
    AVG(first_response_time_minutes) AS avg_first_response_time,
    AVG(satisfaction_score) AS avg_satisfaction_score,
    SUM(escalation_flag) * 1.0 / COUNT(ticket_id) AS escalation_rate
FROM stg_support_tickets
GROUP BY account_id;