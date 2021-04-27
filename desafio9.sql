DELIMITER $$

CREATE PROCEDURE albuns_do_artista (IN nome VARCHAR(50))
BEGIN
  SELECT
    art.nome_artista AS `artista`,
    alb.nome_album AS `album`
  FROM SpotifyClone.Artistas AS art
  INNER JOIN SpotifyClone.Albuns AS alb
  ON art.artista_id = alb.artista_id
  WHERE art.nome_artista = nome
  ORDER BY `album`;
END
$$ DELIMITER ;
