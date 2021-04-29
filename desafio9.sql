DELIMITER $$
  CREATE PROCEDURE albuns_do_artista(IN artist VARCHAR(45))
  BEGIN
    SELECT
      A.artist AS artista,
      AL.album AS album 
      FROM SpotifyClone.artistas AS A
    INNER JOIN SpotifyClone.album AS AL ON A.artist_id = AL.artist_id
    WHERE A.artist = artist
    ORDER BY album;
  END
$$ DELIMITER ;
