USE SpotifyClone;
DELIMITER $$
CREATE FUNCTION quantidade_musicas_no_historico(id INT)
RETURNS INT READS SQL DATA
BEGIN
  DECLARE total INT;
  SELECT COUNT(uc.cancao_id) FROM Usuario_Cancao AS uc
  INNER JOIN Usuario AS u ON u.usuario_id = uc.usuario_id
  WHERE u.usuario_id = id INTO total;
  RETURN total;
END $$
DELIMITER ;
