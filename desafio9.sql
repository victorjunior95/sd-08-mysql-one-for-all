DELIMITER $$
CREATE PROCEDURE SpotifyClone.albuns_do_artista(IN name VARCHAR(100))
BEGIN
SELECT
A.name AS artista,
AL.title AS album
FROM SpotifyClone.artist AS A
INNER JOIN SpotifyClone.album AS AL ON AL.artist_id = A.artist_id
WHERE A.name = name
ORDER BY AL.title ASC;
END $$
DELIMITER ;
