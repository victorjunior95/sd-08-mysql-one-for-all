USE SpotifyClone;
DELIMITER $$

CREATE PROCEDURE albuns_do_artista(IN artistName VARCHAR(45))
BEGIN
  SELECT
    CONCAT(A.first_name, ' ', A.last_name) AS 'artista',
    AB.name AS 'album'
  FROM SpotifyClone.album as AB
  INNER JOIN SpotifyClone.artist AS A
  ON AB.artist_id = A.artist_id
  WHERE AB.artist_id = (
    SELECT artist_id
    FROM SpotifyClone.artist
    WHERE CONCAT(A.first_name, ' ', A.last_name) = artistName
    LIMIT 1
  );
END

$$ DELIMITER ;
