DELIMITER $$

CREATE PROCEDURE albuns_do_artista(
  IN artist_to_find VARCHAR(45)
)

BEGIN
  SELECT
    ART.artist_name AS artista,
    ALB.album_name AS album
  FROM SpotifyClone.artists AS ART
  INNER JOIN SpotifyClone.albums AS ALB
    ON ART.artist_id = ALB.artist_id
  WHERE artist_name = artist_to_find
  ORDER BY 2;
END $$

DELIMITER ;
