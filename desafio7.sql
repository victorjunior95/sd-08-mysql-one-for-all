CREATE VIEW perfil_artistas AS
SELECT
  A.artistaNome AS 'artista',
  AL.album,
  S.seguidores
FROM SpotifyClone.Albums AS AL
INNER JOIN SpotifyClone.Artistas AS A
ON AL.artista_id = A.artista_id
INNER JOIN (
  SELECT artista_id, COUNT(*) as 'seguidores'
  FROM SpotifyClone.Seguidores
  GROUP BY artista_id
) AS S
ON A.artista_id = S.artista_id
ORDER BY `seguidores` DESC, `artista`, `album`;
