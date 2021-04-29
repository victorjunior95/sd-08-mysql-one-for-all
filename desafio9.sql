DELIMITER $$

CREATE PROCEDURE albuns_do_artista(IN artist_name VARCHAR(255))
BEGIN
  SELECT
    artist AS artista,
    album
  FROM SpotifyClone.artists
  INNER JOIN SpotifyClone.albums
  ON albums.artist_id = artists.artist_id
  WHERE artists.artist LIKE CONCAT('%', artist_name, '%')
  ORDER BY album;
END $$

DELIMITER ;
