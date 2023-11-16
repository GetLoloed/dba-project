-- Création d'un trigger pour conserver l'historique des usernames
CREATE OR REPLACE FUNCTION update_username_history()
    RETURNS TRIGGER AS
$$
BEGIN
    INSERT INTO username_history (user_id, username_new)
    VALUES (NEW.user_id, NEW.username);
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER trigger_update_username
    AFTER UPDATE OF username
    ON user_table
    FOR EACH ROW
    WHEN (OLD.username IS DISTINCT FROM NEW.username)
EXECUTE FUNCTION update_username_history();
