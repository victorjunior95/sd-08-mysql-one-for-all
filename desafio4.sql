CREATE VIEW top_3_artistas AS
  SELECT
    A.artist AS artista,
    COUNT(*) AS seguidores
  FROM SpotifyClone.artists AS A
  INNER JOIN SpotifyClone.following AS F ON A.artist_id = F.artist_id
  GROUP BY F.artist_id
  ORDER BY seguidores DESC, artista
  LIMIT 3;
