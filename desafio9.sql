USE SpotifyClone;
DELIMITER $$
CREATE PROCEDURE albuns_do_artista(in targetArtistName varchar(50))
BEGIN
    SELECT targetArtistName AS 'artista', al.album AS 'album' FROM Albums AS al
    -- WHERE al.artista_id = ar.artista_id
    INNER JOIN Artistas AS ar
    ON ar.artistaName = targetArtistName AND  al.artista_id = ar.artista_id
    GROUP BY al.album
    ORDER BY 2;
END $$
DELIMITER ;
CALL albuns_do_artista('Walter Phoenix');
