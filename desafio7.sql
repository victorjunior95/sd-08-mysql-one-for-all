CREATE VIEW perfil_artistas AS
SELECT
  CONCAT(A.first_name, ' ', A.last_name) AS 'artista',
  AL.name AS 'album',
  F.seguidores
FROM SpotifyClone.album AS AL
INNER JOIN SpotifyClone.artist AS A
ON AL.artist_id = A.artist_id
INNER JOIN (
  SELECT artist_id, COUNT(*) as 'seguidores'
  FROM SpotifyClone.user_artist
  GROUP BY artist_id
) AS F
ON A.artist_id = F.artist_id
ORDER BY `seguidores` DESC, `artista`, `album`;
