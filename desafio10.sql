USE SpotifyClone;
DELIMITER $$
CREATE PROCEDURE quantidade_musicas_no_historico(in nameOfUser varchar(50),  OUT numberOfHistoric NUMERIC)
BEGIN
    SELECT COUNT(usuario_id)  FROM Historico AS h
--     -- WHERE al.artista_id = ar.artista_id
    INNER JOIN Usuarios AS u
    ON u.usuarioName = nameOfUser AND  h.usuario_id = u.usuario_id
    INTO numberOfHistoric;
--     GROUP BY al.album
--     ORDER BY 2;
END $$
DELIMITER ;
CALL quantidade_musicas_no_historico("Bill");
