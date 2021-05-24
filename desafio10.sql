USE SpotifyClone;
DELIMITER $$

CREATE FUNCTION quantidade_musicas_no_historico(user INT)
  RETURNS INT READS SQL DATA
  BEGIN
    DECLARE number_of_songs_played INT;
    SELECT
      COUNT(*)
    FROM histories
    JOIN users ON users.user_id = histories.user_id
    WHERE users.user_id = user
    INTO number_of_songs_played;
    RETURN number_of_songs_played;
  END $$

DELIMITER ;
