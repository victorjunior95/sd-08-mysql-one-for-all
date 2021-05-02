USE SpotifyClone;
DELIMITER $$
CREATE FUNCTION quantidade_musicas_no_historico(usuario VARCHAR(100))
RETURNS INT READS SQL DATA
BEGIN
  DECLARE total_cancoes INT;
  SELECT COUNT(*) FROM historic
  INNER JOIN users
  ON historic.usuario_id = users.usuario_id
  WHERE users.usuario = usuario
  INTO total_cancoes;
  RETURN total_cancoes;
END $$
DELIMITER ;
