USE SaaS_Analytics;
CREATE TABLE churn_events (
    churn_event_id VARCHAR(50),
    account_id VARCHAR(50),
    churn_date DATE,
    reason_code VARCHAR(100),
    refund_amount_usd DECIMAL(10,2),
    preceding_upgrade_flag BOOLEAN DEFAULT FALSE,
    preceding_downgrade_flag BOOLEAN DEFAULT FALSE,
    is_reactivation BOOLEAN DEFAULT FALSE,
    feedback_text TEXT
);