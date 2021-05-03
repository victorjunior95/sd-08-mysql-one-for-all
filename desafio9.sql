DELIMITER $

CREATE PROCEDURE albuns_do_artista(IN artistName VARCHAR(30))
BEGIN
SELECT
artist.artist_name AS artista,
album.album_name AS album
FROM SpotifyClone.Artist AS artist
INNER JOIN SpotifyClone.Album AS album
ON artist.artist_id = album.artist_id
WHERE artist.artist_name = artistName
ORDER BY `album`;
END $

DELIMITER ;
