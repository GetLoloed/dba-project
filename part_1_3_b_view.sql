-- Création de la vue 'session_per_month'
CREATE VIEW session_per_month AS
SELECT connected_at_month,
       COUNT(*) AS total_sessions
FROM session_table
GROUP BY connected_at_month
ORDER BY connected_at_month;
