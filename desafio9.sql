DELIMITER $$
CREATE PROCEDURE albuns_do_artista(IN artistName VARCHAR(50))
BEGIN
SELECT ar.artist_name AS `artista`, al.album_name AS `album`
FROM SpotifyClone.Artists AS ar
INNER JOIN SpotifyClone.Albuns AS al ON ar.artist_id = al.artist_id
WHERE artistName = ar.artist_name;
END $$

DELIMITER ;
