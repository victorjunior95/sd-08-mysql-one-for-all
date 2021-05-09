DELIMITER &&
  CREATE FUNCTION `quantidade_musicas_no_historico` (id INT)
  RETURNS INT READS SQL DATA
  BEGIN
  DECLARE quantidade_musicas INT;
  SELECT COUNT(*) FROM SpotifyClone.historico
  WHERE usuario_id = id
  GROUP BY usuario_id INTO quantidade_musicas;
  RETURN quantidade_musicas;
  END &&
DELIMITER ;
