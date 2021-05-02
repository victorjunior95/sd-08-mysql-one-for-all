USE SpotifyClone;
DELIMITER $$
CREATE FUNCTION quantidade_musicas_no_historico(usuario_id INT)
RETURNS INT READS SQL DATA
BEGIN
DECLARE quantidade INT;
SELECT COUNT(*)
FROM historico_de_reproducoes h
WHERE h.usuario_id = usuario_id
INTO quantidade;
RETURN quantidade;
END $$
DELIMITER ;
