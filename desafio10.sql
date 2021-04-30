USE SpotifyClone;
DELIMITER $$

CREATE FUNCTION quantidade_musicas_no_historico(user_name VARCHAR(50))
RETURNS INT READS SQL DATA
BEGIN
  DECLARE quantity INT;
  SELECT
  COUNT(*)
  FROM users AS U
  INNER JOIN user_history AS UH
  ON U.USER_ID = UH.USER_ID
  WHERE U.NAME = user_name
  INTO quantity;
  RETURN quantity;
END $$

DELIMITER ;
