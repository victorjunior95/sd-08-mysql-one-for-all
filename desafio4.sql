CREATE VIEW top_3_artistas AS
  SELECT
    a.nome AS artista,
    COUNT(*) AS seguidores
  FROM SpotifyClone.artistas AS a
  INNER JOIN SpotifyClone.follows AS f
  ON a.artista_id = f.artista_id
  GROUP BY artista
  ORDER BY seguidores, artista DESC LIMIT 3;
