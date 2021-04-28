DELIMITER $$

CREATE FUNCTION quantidade_musicas_no_historico (usuarioId INT)
RETURNS INT READS SQL DATA
BEGIN
DECLARE quantidade_total INT;
SELECT COUNT(*) FROM SpotifyClone.historico_de_reproducoes
WHERE usuario_id = usuarioId INTO quantidade_total;
RETURN quantidade_total;
END $$

DELIMITER ;
