CREATE VIEW perfil_artistas AS
  SELECT
    C.artista AS artista,
    A.album AS album,
    COUNT(*) AS seguidores
  FROM SpotifyClone.artistas AS C
  INNER JOIN SpotifyClone.albuns AS A
    ON C.artista_id = A.artista_id
  INNER JOIN SpotifyClone.seguidores AS S
    ON C.artista_id = S.artista_id
  GROUP BY A.album_id
  ORDER BY seguidores DESC , artista , album;
