USE SpotifyClone;
DELIMITER $$
CREATE PROCEDURE albuns_do_artista(IN nome VARCHAR(50))
BEGIN
  SELECT artista.artista_nome AS artista,
  albuns.album_nome AS album
  FROM SpotifyClone.albuns AS albuns
  INNER JOIN SpotifyClone.artistas AS artista
  ON albuns.artista_id = artista.artista_id
  WHERE artista.artista_nome = nome
  ORDER BY album;
END $$
DELIMITER ;
