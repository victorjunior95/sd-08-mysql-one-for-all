USE SpotifyClone;
DELIMITER $$

CREATE PROCEDURE albuns_do_artista(IN artist_name VARCHAR(50))
BEGIN
  SELECT
  AR.NAME AS 'artista',
  AL.NAME AS 'album'
  FROM albums AS AL
  INNER JOIN artists AS AR
  ON AL.ARTIST_ID = AR.ARTIST_ID
  WHERE AR.NAME = artist_name;
END $$

DELIMITER ;
