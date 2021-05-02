CREATE VIEW top_3_artistas AS    
  SELECT
    artists.artista AS artista,
    COUNT(follow.usuario_id) AS seguidores
  FROM SpotifyClone.follow AS follow
  INNER JOIN SpotifyClone.artists AS artists
    ON follow.artista_id = artists.artista_id
  GROUP BY artista
  ORDER BY seguidores DESC, artista ASC
  LIMIT 3;
