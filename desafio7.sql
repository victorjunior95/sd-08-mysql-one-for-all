CREATE VIEW perfil_artistas AS
SELECT
A.artista,
AL.album,
Sub.QA as seguidores
FROM(
SELECT artista_id, count(artista_id) AS QA FROM SpotifyClone.Seguidores
GROUP BY artista_id) AS Sub
INNER JOIN SpotifyClone.Albuns AS AL
ON Sub.artista_id = AL. artista_id
INNER JOIN SpotifyClone.Artistas A
ON Sub.artista_id = A.artista_id
ORDER BY 3 DESC, 1, 2;
