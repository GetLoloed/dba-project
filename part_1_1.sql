-- Création des tables pour la base de données 'app_auth'

-- Table 'user'
CREATE TABLE user
(
    user_id    SERIAL PRIMARY KEY,
    firstname  VARCHAR(255),
    lastname   VARCHAR(255),
    email      VARCHAR(255) UNIQUE,
    username   VARCHAR(255) UNIQUE CHECK (LENGTH(username) > 8),
    password   VARCHAR(255) CHECK (LENGTH(password) > 8),
    created_at TIMESTAMP WITHOUT TIME ZONE DEFAULT CURRENT_TIMESTAMP
);

-- Table 'user_email_verification'
CREATE TABLE user_email_verification
(
    uev_id      SERIAL PRIMARY KEY,
    user_id     INT REFERENCES user (user_id),
    verified_at TIMESTAMP WITHOUT TIME ZONE
);

-- Table 'session'
CREATE TABLE session
(
    session_id   SERIAL PRIMARY KEY,
    user_id      INT REFERENCES user (user_id),
    connected_at TIMESTAMP WITHOUT TIME ZONE
);
