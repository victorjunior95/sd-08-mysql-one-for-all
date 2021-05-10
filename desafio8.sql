USE SpotifyClone;

DELIMITER $$
CREATE TRIGGER trigger_usuario_delete
  BEFORE DELETE ON users
  FOR EACH ROW
BEGIN
DELETE fa , h FROM SpotifyClone.following_artists AS fa
        INNER JOIN
    SpotifyClone.history AS h ON fa.user_id = h.user_id
WHERE
    fa.user_id = OLD.user_id
    OR h.user_id = OLD.user_id;
END $$

DELIMITER ;
