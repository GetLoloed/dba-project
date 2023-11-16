-- Création de la table 'subscription'
CREATE TABLE subscription
(
    subscription_id   SERIAL PRIMARY KEY,
    subscribed_at     TIMESTAMP WITHOUT TIME ZONE,
    user_id           INT REFERENCES user_table (user_id),
    paid              INTEGER CHECK (paid IN (10, 100, 1000)),
    subscription_plan VARCHAR(255) CHECK (subscription_plan IN ('monthly', 'yearly', 'lifetime'))
);

INSERT INTO subscription (subscribed_at, user_id, paid, subscription_plan)
VALUES ('2023-02-27 15:30:23', 7, 1000, 'lifetime');
INSERT INTO subscription (subscribed_at, user_id, paid, subscription_plan)
VALUES ('2023-05-08 15:36:09', 53, 10, 'monthly');
INSERT INTO subscription (subscribed_at, user_id, paid, subscription_plan)
VALUES ('2023-03-15 20:56:01', 36, 100, 'yearly');
INSERT INTO subscription (subscribed_at, user_id, paid, subscription_plan)
VALUES ('2023-02-20 11:08:21', 13, 1000, 'lifetime');
INSERT INTO subscription (subscribed_at, user_id, paid, subscription_plan)
VALUES ('2023-01-02 11:05:56', 90, 10, 'monthly');
INSERT INTO subscription (subscribed_at, user_id, paid, subscription_plan)
VALUES ('2023-02-22 06:31:21', 76, 1000, 'lifetime');
INSERT INTO subscription (subscribed_at, user_id, paid, subscription_plan)
VALUES ('2023-06-11 13:29:30', 81, 10, 'monthly');
INSERT INTO subscription (subscribed_at, user_id, paid, subscription_plan)
VALUES ('2023-01-09 12:59:15', 77, 1000, 'lifetime');
INSERT INTO subscription (subscribed_at, user_id, paid, subscription_plan)
VALUES ('2023-03-24 03:46:00', 96, 1000, 'lifetime');
INSERT INTO subscription (subscribed_at, user_id, paid, subscription_plan)
VALUES ('2023-03-17 07:06:28', 47, 1000, 'lifetime');
INSERT INTO subscription (subscribed_at, user_id, paid, subscription_plan)
VALUES ('2023-03-03 22:41:51', 32, 10, 'monthly');
INSERT INTO subscription (subscribed_at, user_id, paid, subscription_plan)
VALUES ('2023-02-25 16:57:47', 73, 1000, 'lifetime');
INSERT INTO subscription (subscribed_at, user_id, paid, subscription_plan)
VALUES ('2023-01-12 16:45:42', 22, 10, 'monthly');
INSERT INTO subscription (subscribed_at, user_id, paid, subscription_plan)
VALUES ('2023-04-01 19:12:46', 74, 100, 'yearly');
INSERT INTO subscription (subscribed_at, user_id, paid, subscription_plan)
VALUES ('2023-02-08 05:20:05', 65, 100, 'yearly');
INSERT INTO subscription (subscribed_at, user_id, paid, subscription_plan)
VALUES ('2023-01-30 12:01:29', 53, 100, 'yearly');
INSERT INTO subscription (subscribed_at, user_id, paid, subscription_plan)
VALUES ('2023-04-01 22:28:54', 83, 10, 'monthly');
INSERT INTO subscription (subscribed_at, user_id, paid, subscription_plan)
VALUES ('2023-06-16 20:14:14', 87, 1000, 'lifetime');
INSERT INTO subscription (subscribed_at, user_id, paid, subscription_plan)
VALUES ('2023-06-21 00:53:41', 76, 100, 'yearly');
INSERT INTO subscription (subscribed_at, user_id, paid, subscription_plan)
VALUES ('2023-03-28 13:23:00', 83, 1000, 'lifetime');
INSERT INTO subscription (subscribed_at, user_id, paid, subscription_plan)
VALUES ('2023-04-11 06:26:05', 98, 100, 'yearly');
INSERT INTO subscription (subscribed_at, user_id, paid, subscription_plan)
VALUES ('2023-05-31 10:00:20', 2, 100, 'yearly');
INSERT INTO subscription (subscribed_at, user_id, paid, subscription_plan)
VALUES ('2023-04-29 18:40:45', 28, 100, 'yearly');
INSERT INTO subscription (subscribed_at, user_id, paid, subscription_plan)
VALUES ('2023-05-05 08:56:21', 5, 1000, 'lifetime');
INSERT INTO subscription (subscribed_at, user_id, paid, subscription_plan)
VALUES ('2023-01-14 14:37:07', 32, 1000, 'lifetime');
INSERT INTO subscription (subscribed_at, user_id, paid, subscription_plan)
VALUES ('2023-01-11 06:27:18', 40, 100, 'yearly');
INSERT INTO subscription (subscribed_at, user_id, paid, subscription_plan)
VALUES ('2023-04-04 09:22:25', 48, 1000, 'lifetime');
INSERT INTO subscription (subscribed_at, user_id, paid, subscription_plan)
VALUES ('2023-02-11 04:23:59', 85, 1000, 'lifetime');
INSERT INTO subscription (subscribed_at, user_id, paid, subscription_plan)
VALUES ('2023-02-22 04:49:07', 46, 100, 'yearly');
INSERT INTO subscription (subscribed_at, user_id, paid, subscription_plan)
VALUES ('2023-05-31 05:20:56', 98, 1000, 'lifetime');
INSERT INTO subscription (subscribed_at, user_id, paid, subscription_plan)
VALUES ('2023-05-23 21:46:29', 5, 100, 'yearly');
INSERT INTO subscription (subscribed_at, user_id, paid, subscription_plan)
VALUES ('2023-01-13 22:23:25', 89, 100, 'yearly');
INSERT INTO subscription (subscribed_at, user_id, paid, subscription_plan)
VALUES ('2023-05-13 07:58:30', 61, 1000, 'lifetime');
INSERT INTO subscription (subscribed_at, user_id, paid, subscription_plan)
VALUES ('2023-05-15 12:50:31', 9, 100, 'yearly');
INSERT INTO subscription (subscribed_at, user_id, paid, subscription_plan)
VALUES ('2023-02-02 01:57:27', 22, 100, 'yearly');
INSERT INTO subscription (subscribed_at, user_id, paid, subscription_plan)
VALUES ('2023-05-24 20:03:57', 25, 10, 'monthly');
INSERT INTO subscription (subscribed_at, user_id, paid, subscription_plan)
VALUES ('2023-04-15 23:19:13', 72, 1000, 'lifetime');
INSERT INTO subscription (subscribed_at, user_id, paid, subscription_plan)
VALUES ('2023-04-17 11:57:31', 81, 100, 'yearly');
INSERT INTO subscription (subscribed_at, user_id, paid, subscription_plan)
VALUES ('2023-05-11 01:55:48', 80, 1000, 'lifetime');
INSERT INTO subscription (subscribed_at, user_id, paid, subscription_plan)
VALUES ('2023-05-20 02:45:57', 70, 10, 'monthly');
INSERT INTO subscription (subscribed_at, user_id, paid, subscription_plan)
VALUES ('2023-06-18 11:08:08', 77, 100, 'yearly');
INSERT INTO subscription (subscribed_at, user_id, paid, subscription_plan)
VALUES ('2023-04-13 16:12:45', 97, 10, 'monthly');
INSERT INTO subscription (subscribed_at, user_id, paid, subscription_plan)
VALUES ('2023-05-07 07:20:55', 60, 10, 'monthly');
INSERT INTO subscription (subscribed_at, user_id, paid, subscription_plan)
VALUES ('2023-03-22 12:36:47', 41, 100, 'yearly');
INSERT INTO subscription (subscribed_at, user_id, paid, subscription_plan)
VALUES ('2023-03-23 15:08:33', 4, 100, 'yearly');
INSERT INTO subscription (subscribed_at, user_id, paid, subscription_plan)
VALUES ('2023-01-07 02:53:11', 52, 10, 'monthly');
INSERT INTO subscription (subscribed_at, user_id, paid, subscription_plan)
VALUES ('2023-01-22 07:08:16', 92, 10, 'monthly');
INSERT INTO subscription (subscribed_at, user_id, paid, subscription_plan)
VALUES ('2023-01-01 10:41:00', 34, 10, 'monthly');
INSERT INTO subscription (subscribed_at, user_id, paid, subscription_plan)
VALUES ('2023-05-17 13:59:45', 77, 1000, 'lifetime');
INSERT INTO subscription (subscribed_at, user_id, paid, subscription_plan)
VALUES ('2023-01-13 12:36:07', 31, 100, 'yearly');
INSERT INTO subscription (subscribed_at, user_id, paid, subscription_plan)
VALUES ('2023-04-27 21:32:16', 58, 10, 'monthly');
INSERT INTO subscription (subscribed_at, user_id, paid, subscription_plan)
VALUES ('2023-06-14 00:20:00', 49, 100, 'yearly');
INSERT INTO subscription (subscribed_at, user_id, paid, subscription_plan)
VALUES ('2023-04-13 19:53:04', 67, 100, 'yearly');
INSERT INTO subscription (subscribed_at, user_id, paid, subscription_plan)
VALUES ('2023-05-31 01:20:00', 28, 100, 'yearly');
INSERT INTO subscription (subscribed_at, user_id, paid, subscription_plan)
VALUES ('2023-02-02 23:18:50', 71, 100, 'yearly');
INSERT INTO subscription (subscribed_at, user_id, paid, subscription_plan)
VALUES ('2023-06-19 00:30:11', 11, 100, 'yearly');
INSERT INTO subscription (subscribed_at, user_id, paid, subscription_plan)
VALUES ('2023-02-02 14:57:47', 26, 10, 'monthly');
INSERT INTO subscription (subscribed_at, user_id, paid, subscription_plan)
VALUES ('2023-01-03 05:40:37', 55, 100, 'yearly');
INSERT INTO subscription (subscribed_at, user_id, paid, subscription_plan)
VALUES ('2023-04-17 10:16:31', 57, 10, 'monthly');
INSERT INTO subscription (subscribed_at, user_id, paid, subscription_plan)
VALUES ('2023-01-06 04:30:33', 32, 10, 'monthly');
