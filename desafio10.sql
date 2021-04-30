USE SpotifyClone;
DELIMITER $$

CREATE FUNCTION quantidade_musicas_no_historico(user_name DECIMAL(3,0))
RETURNS INT READS SQL DATA
BEGIN
  DECLARE quantity INT;
  SELECT
  COUNT(*)
  FROM users AS U
  INNER JOIN user_history AS UH
  ON U.USER_ID = UH.USER_ID
  WHERE U.USER_ID = user_name
  INTO quantity;
  RETURN quantity;
END $$

DELIMITER ;
