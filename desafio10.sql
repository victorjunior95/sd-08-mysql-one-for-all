DELIMITER $$

CREATE FUNCTION quantidade_musicas_no_historico (user_id_to_find INT)
RETURNS INT READS SQL DATA
BEGIN
  DECLARE songs_amount INT;
  SELECT 
    COUNT(LH.song_id)
  FROM SpotifyClone.users AS U
  INNER JOIN SpotifyClone.listening_history AS LH
    ON U.user_id = LH.user_id
  WHERE U.user_id = user_id_to_find
  INTO songs_amount;

  RETURN songs_amount;
END $$

DELIMITER ;
