USE spotifyClone;
DELIMITER $$
CREATE FUNCTION quantidade_musicas_no_historico(id INT(11))
RETURNS INT READS SQL DATA
BEGIN
RETURN (
SELECT COUNT(*) FROM SpotifyClone.Historicos WHERE usuario_id = id
);
END $$
DELIMITER ;
