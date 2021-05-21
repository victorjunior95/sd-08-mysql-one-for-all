USE SpotifyClone;

DELIMITER $$

CREATE FUNCTION quantidade_musicas_no_historico(codId INT)
RETURNS INT READS SQL DATA
BEGIN
  DECLARE qtd_musicas INT;
  SELECT COUNT(usuario_id)
  FROM SpotifyClone.historico
  WHERE SpotifyClone.historico.usuario_id = codId INTO qtd_musicas;
  RETURN qtd_musicas;
END $$

DELIMITER ;
