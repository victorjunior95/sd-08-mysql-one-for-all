DELIMITER $$
CREATE PROCEDURE SpotifyClone.albuns_do_artista(IN nome VARCHAR(25))
BEGIN
SELECT a.artist_name AS `artista`, alb.album_name AS `album`
FROM SpotifyClone.artists AS a
INNER JOIN SpotifyClone.albums AS alb
ON a.artist_id = alb.artist_id
WHERE nome = a.artist_name
ORDER BY alb.album_name;
END $$
DELIMITER ;
