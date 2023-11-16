-- Création de la vue 'session_and_user'
CREATE VIEW session_and_user AS
SELECT s.session_id,
       s.connected_at,
       u.user_id,
       u.firstname,
       u.lastname,
       u.email,
       u.username,
       u.password,
       u.created_at
FROM session_table s
         JOIN
     user_table u ON s.user_id = u.user_id;
