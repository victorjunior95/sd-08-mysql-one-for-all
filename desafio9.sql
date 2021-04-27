USE SpotifyClone;
DELIMITER $$

CREATE PROCEDURE albuns_do_artista(artista_nome VARCHAR(50))
BEGIN
  SELECT 
  artista AS `artista`,
  album AS `album`
  FROM SpotifyClone.artistas AS art
  INNER JOIN SpotifyClone.albuns AS alb
  ON art.artista_id = alb.artista_id
  WHERE artista = artista_nome
  ORDER BY `album`;
END $$

DELIMITER ;
