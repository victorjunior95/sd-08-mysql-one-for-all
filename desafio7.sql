CREATE VIEW perfil_artistas AS
  SELECT 
    A.artist AS artista,
    AL.album AS album,
    COUNT(*) AS seguidores
  FROM SpotifyClone.artists AS A
  INNER JOIN SpotifyClone.albums AS AL ON A.artist_id = AL.artist_id
  INNER JOIN SpotifyClone.following AS F ON A.artist_id = F.artist_id
  GROUP BY AL.album_id
  ORDER BY seguidores DESC, artista, album;
