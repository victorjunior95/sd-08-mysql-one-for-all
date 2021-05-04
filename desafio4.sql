CREATE VIEW top_3_artistas AS
SELECT
  A.artistaNome AS 'artista',
  COUNT(A.artista_id) AS 'seguidores'
FROM SpotifyClone.Seguidores AS S
INNER JOIN SpotifyClone.Artistas AS A ON S.artista_id = A.artista_id
GROUP BY A.artista_id
ORDER BY `seguidores` DESC, `artista`
LIMIT 3;
