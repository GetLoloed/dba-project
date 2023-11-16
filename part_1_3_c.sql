-- Création de la vue 'very_active_users_may'
CREATE VIEW very_active_users_may AS
WITH may_sessions AS (SELECT s.user_id
                      FROM session_table s
                      WHERE EXTRACT(MONTH FROM s.connected_at) = 5),
     user_session_counts AS (SELECT user_id, COUNT(*) AS session_count
                             FROM may_sessions
                             GROUP BY user_id),
     average_session_count AS (SELECT AVG(session_count) * 0.6 AS average_count
                               FROM user_session_counts)
SELECT u.username
FROM user_session_counts usc
         JOIN user_table u ON usc.user_id = u.user_id,
     average_session_count
WHERE usc.session_count > average_session_count.average_count;
