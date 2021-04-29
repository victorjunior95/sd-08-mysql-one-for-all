CREATE VIEW perfil_artistas AS
  SELECT
    artist AS artista,
    alb.album AS album,
    seguidores
  FROM SpotifyClone.artists AS art
  INNER JOIN SpotifyClone.albums AS alb ON art.artist_id = alb.artist_id
  INNER JOIN (
    SELECT
      album,
      count(album) AS seguidores
    FROM SpotifyClone.albums AS ar
    INNER JOIN SpotifyClone.follows AS f ON ar.artist_id = f.artist_id
    GROUP BY album
  ) AS cnt ON alb.album = cnt.album
  ORDER BY seguidores DESC, artista, album;
