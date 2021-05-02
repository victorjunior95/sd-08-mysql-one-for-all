USE SpotifyClone;
DELIMITER $$
CREATE FUNCTION quantidade_musicas_no_historico(id INT)
RETURNS INT READS SQL DATA
BEGIN
  DECLARE total_cancoes INT;
  SELECT COUNT(*) FROM historic
  WHERE usuario_id = id
  INTO total_cancoes;
  RETURN total_cancoes;
END $$
DELIMITER ;
