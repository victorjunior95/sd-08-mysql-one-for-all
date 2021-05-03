DELIMITER $
CREATE PROCEDURE albuns_do_artista(IN n_artista VARCHAR(50))
BEGIN
  SELECT art.nome_artista artista, alb.nome_album album
  FROM SpotifyClone.artista art
  JOIN SpotifyClone.album alb ON alb.artista_id = art.artista_id
  WHERE art.nome_artista = n_artista;
END
$
