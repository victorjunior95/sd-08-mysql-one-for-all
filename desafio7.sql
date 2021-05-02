CREATE VIEW perfil_artistas AS
SELECT artista_nome AS artista,
  B.album_nome AS album,
  COUNT(C.usuario_id) AS seguidores
FROM SpotifyClone.artistas AS A
  INNER JOIN SpotifyClone.albuns AS B ON A.artista_id = B.artista_id
  INNER JOIN SpotifyClone.usuario_artista AS C ON C.artista_id = A.artista_id
GROUP BY A.artista_nome,
  B.album_nome
ORDER BY seguidores DESC,
  artista,
  album;
