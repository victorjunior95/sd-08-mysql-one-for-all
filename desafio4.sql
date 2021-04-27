USE SpotifyClone;
CREATE VIEW top_3_artistas AS
  SELECT
  A.NAME AS 'artista',
  COUNT(AF.ARTIST_ID) AS 'seguidores'
  FROM artist_followers AS AF
  INNER JOIN artists AS A
  ON AF.ARTIST_ID = A.ARTIST_ID
  GROUP BY AF.ARTIST_ID
  ORDER BY `seguidores` DESC, `artista`
  LIMIT 3;
