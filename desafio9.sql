USE SpotifyClone;
DELIMITER $$
CREATE PROCEDURE albuns_do_artista(IN artist VARCHAR(100))
BEGIN
  SELECT
    artists.artista AS artista,
    albums.album AS album
  FROM SpotifyClone.artists AS artists
  INNER JOIN SpotifyClone.albums AS albums
    ON artists.artista_id = albums.artista_id
  WHERE artista = artist;
END $$
DELIMITER ;
