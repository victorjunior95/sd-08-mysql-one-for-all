USE SpotifyClone;
DELIMITER $$

CREATE PROCEDURE albuns_do_artista(IN artist VARCHAR(100))
  BEGIN
    SELECT
      artists.name AS artista,
      albums.name AS album
    FROM albums
    JOIN artists ON artists.artist_id = albums.artist_id
    WHERE artists.name = artist
    ORDER BY album;
  END $$

DELIMITER ;
