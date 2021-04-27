USE SpotifyClone;

DELIMITER $
CREATE FUNCTION quantidade_musicas_no_historico(userId TINYINT)
RETURNS TINYINT READS SQL DATA
  BEGIN
    DECLARE quantity TINYINT;
    SELECT
      COUNT(*)
    FROM users AS u
    INNER JOIN songs_history AS sh
    ON sh.user_id = u.user_id
    WHERE u.user_id = userId
    INTO quantity;
    RETURN quantity;
  END $

DELIMITER ;
