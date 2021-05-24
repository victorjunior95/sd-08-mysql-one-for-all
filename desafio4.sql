CREATE VIEW top_3_artistas AS
  SELECT
    A.artista AS artista,
    COUNT(A.artista_id) AS seguidores
  FROM SpotifyClone.seguidores AS S
  INNER JOIN SpotifyClone.artistas AS A
    ON A.artista_id = S.artista_id
  GROUP BY artista
  ORDER BY seguidores DESC, artista
  LIMIT 3;
