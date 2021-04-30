USE SpotifyClone;

DELIMITER $$
CREATE PROCEDURE albuns_do_artista(IN artiste VARCHAR(25))
BEGIN
SELECT 
(SELECT 
art.artiste_name
FROM
SpotifyClone.artiste AS art
WHERE
alb.artiste_id = art.artiste_id) AS artista,
alb.album_name AS album
FROM
SpotifyClone.albums AS alb
WHERE
(SELECT 
art.artiste_name
FROM
SpotifyClone.artiste AS art
WHERE
alb.artiste_id = art.artiste_id) = artiste
ORDER BY album;
END
$$ DELIMITER ;
