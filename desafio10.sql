USE SpotifyClone;
DELIMITER $$
CREATE FUNCTION quantidade_musicas_no_historico(nome VARCHAR(100))
RETURNS INT READS SQL DATA
BEGIN
DECLARE id_music INT;
SELECT COUNT(h.usuario_id)
FROM SpotifyClone.historico_reproducoes AS h
INNER JOIN SpotifyClone.usuario AS u
ON u.usuario_id = h.usuario_id
WHERE u.nome_usuario = nome INTO id_music;
RETURN id_music;
END $$
DELIMITER ;
