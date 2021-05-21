USE SpotifyClone;

DELIMITER $$

CREATE PROCEDURE albuns_do_artista(IN nome VARCHAR(45))
BEGIN
  SELECT ART.artista_nome AS artista,
  ALB.album_nome AS album
  FROM SpotifyClone.artista AS ART
  INNER JOIN SpotifyClone.album AS ALB
  ON ART.artista_id = ALB.artista_id
  WHERE artista_nome = nome
  ORDER BY album;
END $$

DELIMITER ;
