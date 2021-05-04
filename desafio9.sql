USE SpotifyClone;
DELIMITER $$
CREATE PROCEDURE albuns_do_artista(in NomeArtista varchar(100))
BEGIN
    SELECT NomeArtista AS 'artista', AL.album AS 'album' FROM Albums AS AL
    INNER JOIN Artistas AS AR
    ON AR.artistaNome = NomeArtista AND  AL.artista_id = AR.artista_id
    GROUP BY AL.album
    ORDER BY artista;
END $$
DELIMITER ;
