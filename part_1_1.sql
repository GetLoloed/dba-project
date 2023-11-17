-- Création de la table 'user_table'
CREATE TABLE user_table
(
    user_id    SERIAL PRIMARY KEY,
    firstname  VARCHAR(255),
    lastname   VARCHAR(255),
    email      VARCHAR(255) UNIQUE,
    username   VARCHAR(255) UNIQUE CHECK (LENGTH(username) > 8),
    password   VARCHAR(255) CHECK (LENGTH(password) > 8),
    created_at TIMESTAMP WITHOUT TIME ZONE
);

-- Création de la table 'user_email_verification_table'
CREATE TABLE user_email_verification_table
(
    uev_id      SERIAL PRIMARY KEY,
    user_id     INT REFERENCES user_table (user_id),
    verified_at TIMESTAMP WITHOUT TIME ZONE
);

-- Création de la table 'session_table'
CREATE TABLE session_table
(
    session_id   SERIAL PRIMARY KEY,
    user_id      INT REFERENCES user_table (user_id),
    connected_at TIMESTAMP WITHOUT TIME ZONE
);
