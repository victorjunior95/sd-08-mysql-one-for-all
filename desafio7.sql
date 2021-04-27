CREATE VIEW perfil_artistas AS
  SELECT
    a.nome AS artista,
    al.titulo AS album,
    COUNT(*) AS seguidores
  FROM SpotifyClone.artistas AS a
  INNER JOIN SpotifyClone.follows AS f
  ON a.artista_id = f.artista_id
  INNER JOIN SpotifyClone.albuns AS al
  ON a.artista_id = al.artista_id
  GROUP BY al.album_id
  ORDER BY seguidores DESC, artista, album;
