CREATE VIEW top_3_artistas AS
  SELECT
    artists.name AS artista,
    COUNT(followers.artist_id) AS seguidores
  FROM SpotifyClone.followers
  JOIN SpotifyClone.artists ON artists.artist_id = followers.artist_id
  GROUP BY followers.artist_id
  ORDER BY seguidores DESC, artista
  LIMIT 3;
