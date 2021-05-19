
USE SpotifyClone;
DELIMITER $$ 

CREATE PROCEDURE albuns_do_artista (IN NOME_DO_ARTISTA VARCHAR(50))
BEGIN
SELECT artist_name AS artista,
album_name AS album
FROM SpotifyClone.artist AS A
iNNER JOIN SpotifyClone.album as AL
ON A.artist_id = AL.artist_id
WHERE artist_name = NOME_DO_ARTISTA;
END$$

CALL albuns_do_artista('Walter Phoenix');
