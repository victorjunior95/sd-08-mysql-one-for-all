CREATE VIEW top_3_artistas AS
  SELECT
    artist AS artista,
    count(artist) AS seguidores
  FROM SpotifyClone.artists AS a
  INNER JOIN SpotifyClone.follows AS f ON a.artist_id = f.artist_id
  GROUP BY artista
  ORDER BY seguidores DESC, artista
  LIMIT 3;
