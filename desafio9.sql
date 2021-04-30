USE `SpotifyClone`;
DROP procedure IF EXISTS `albuns_do_artista`;

DELIMITER $$

CREATE PROCEDURE `albuns_do_artista` (IN nome VARCHAR(100))
BEGIN
SELECT Art.artist AS 'artista', Alb.album AS 'album'
FROM artists Art
INNER JOIN albums Alb ON Art.artist_id = Alb.artist_id
WHERE Art.artist = nome;
END $$

DELIMITER ;
