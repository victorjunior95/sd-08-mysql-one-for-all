USE SpotifyClone;
DELIMITER $$
CREATE FUNCTION quantidade_musicas_no_historico(nome VARCHAR(20))
RETURNS INT READS SQL DATA
BEGIN
DECLARE musicas INT;
SELECT COUNT(*) FROM historico_de_reproducoes AS hdr
INNER JOIN usuario AS u ON u.usuario_id = hdr.usuario_id
WHERE u.usuario = nome INTO musicas;
RETURN musicas;
END
$$ DELIMITER ;
