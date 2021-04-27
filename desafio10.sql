USE SpotifyClone;
DELIMITER $$

CREATE FUNCTION quantidade_musicas_no_historico(id_do_usuario INT)
RETURNS INT READS SQL DATA
BEGIN
  DECLARE result INT;
  SELECT 
  count(*)
  FROM SpotifyClone.usuario AS u
  INNER JOIN SpotifyClone.historico_de_reproducao AS h
  ON u.usuario_id = h.usuario_id
  WHERE u.usuario_id = id_do_usuario INTO result;
  RETURN result;
END $$

DELIMITER ;
