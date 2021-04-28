CREATE VIEW top_3_artistas AS
  SELECT ARTIST.artist AS `artista`, COUNT(FOLLOW_A.artist_id) AS `seguidores`
  FROM SpotifyClone.Artist AS `ARTIST`
  INNER JOIN SpotifyClone.Follow_Artist AS `FOLLOW_A`
  ON ARTIST.artist_id = FOLLOW_A.artist_id
  GROUP BY ARTIST.artist
  ORDER BY COUNT(FOLLOW_A.artist_id) DESC, ARTIST.artist
  LIMIT 3;
