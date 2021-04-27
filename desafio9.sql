USE SpotifyClone;

DELIMITER $
CREATE PROCEDURE albuns_do_artista(IN artistName VARCHAR(50))
  BEGIN
    SELECT
      ar.name AS artista,
      al.name AS album
    FROM artists AS ar
    INNER JOIN albums AS al
    ON al.artist_id = ar.artist_id
    WHERE ar.name = artistName
    ORDER BY album;
  END $

DELIMITER ;
