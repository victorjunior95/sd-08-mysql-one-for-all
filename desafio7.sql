CREATE VIEW SpotifyClone.perfil_artistas AS
SELECT
  ar.name AS artista,
  al.name AS album,
  COUNT(af.user_id) AS seguidores
FROM artists AS ar
INNER JOIN albums AS al
ON ar.artist_id = al.artist_id
INNER JOIN artists_followers AS af
ON ar.artist_id = af.artist_id
GROUP BY album, artista
ORDER BY seguidores DESC, artista, album;
