CREATE VIEW perfil_artistas AS
SELECT A.artista_nome AS artista,
  AL.album_nome AS album,
  COUNT(S.artista_id) AS seguidores
FROM SpotifyClone.artista AS A
  INNER JOIN SpotifyClone.album AS AL ON A.id = AL.artista_id
  INNER JOIN SpotifyClone.seguindo S ON S.artista_id = A.id
GROUP BY AL.nome_album
ORDER BY seguidores DESC,
  artista,
  album;
