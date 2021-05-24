DELIMITER $$
  CREATE PROCEDURE albuns_do_artista(IN nome VARCHAR(30))
  BEGIN
    SELECT
      C.artista AS artista,
      A.album AS album
    FROM SpotifyClone.artistas AS C
    INNER JOIN SpotifyClone.albuns AS A
      ON A.artista_id = C.artista_id
    WHERE C.artista = nome
    ORDER BY album;
  END
$$ DELIMITER ;
