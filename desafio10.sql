USE SpotifyClone;
DELIMITER $$
CREATE FUNCTION quantidade_musicas_no_historico(id_user INT)
RETURNS INT READS SQL DATA
BEGIN
DECLARE id_music INT;
SELECT COUNT(*)
FROM SpotifyClone.historico_reproducoes
WHERE usuario_id = id_user INTO id_music;
RETURN id_music;
END $$
DELIMITER ;
