-- Création de la vue 'subscription_per_plan_per_month'
CREATE VIEW subscription_per_plan_per_month AS
SELECT EXTRACT(MONTH FROM subscribed_at) AS month,
    subscription_plan,
    SUM(paid) AS total_paid,
    COUNT(*) AS total_subscriptions
FROM subscription
GROUP BY month, subscription_plan
ORDER BY month, subscription_plan;
