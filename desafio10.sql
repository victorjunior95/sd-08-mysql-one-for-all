USE SpotifyClone;
DELIMITER $$

CREATE FUNCTION quantidade_musicas_no_historico(userId INT)
RETURNS INT READS SQL DATA
BEGIN
  DECLARE result INT;
  SELECT COUNT(*)
  FROM SpotifyClone.`playback_history`
  WHERE user_id = userId
  INTO result;
  RETURN result;
END

$$ DELIMITER ;
