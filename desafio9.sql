DELIMITER $$

CREATE PROCEDURE albuns_do_artista(IN nome VARCHAR(50))
BEGIN
  SELECT
    a.nome AS artista,
    al.titulo AS album
  FROM SpotifyClone.artistas AS a
  INNER JOIN SpotifyClone.albuns as al
  ON a.artista_id = al.artista_id
  HAVING a.nome = nome
  ORDER BY album;
END $$

DELIMITER ;
