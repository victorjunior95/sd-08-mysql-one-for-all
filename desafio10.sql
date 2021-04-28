DELIMITER $$
CREATE FUNCTION quantidade_musicas_no_historico(usuarioId INT)
RETURNS INT READS SQL DATA
BEGIN
DECLARE musicasNoHistorico INT;
SELECT COUNT(*) FROM SpotifyClone.usuario AS u
INNER JOIN SpotifyClone.historico_de_reproducoes AS h ON u.usuario_id = h.usuario_id
WHERE u.usuario_id = usuarioId
INTO musicasNoHistorico;
RETURN musicasNoHistorico;
END $$
DELIMITER ;
