DELIMITER $$

CREATE FUNCTION quantidade_musicas_no_historico (idHistorico INT)
RETURNS INT READS SQL DATA
BEGIN
  DECLARE quantidade INT;
    SELECT COUNT(*)
    FROM SpotifyClone.Historico AS historico
    WHERE idHistorico = historico.usuario_id
    INTO quantidade;
  RETURN quantidade;
END $$

DELIMITER ;

SELECT quantidade_musicas_no_historico(3);
