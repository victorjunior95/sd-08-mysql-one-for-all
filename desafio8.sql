DELIMITER $$
CREATE TRIGGER trigger_usuario_delete
    BEFORE DELETE ON user
    FOR EACH ROW
BEGIN
    DELETE FROM
    SpottifyClone.hist_views WHERE user_id = OLD.user_id;
    DELETE FROM
    SpotifyClone.following WHERE user_id = OLD.user_id;
END $$
DELIMITER ;
