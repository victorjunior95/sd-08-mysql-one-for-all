CREATE VIEW SpotifyClone.top_3_artistas AS
SELECT A.artista_nome AS artista, COUNT(S.artista_id) AS seguidores
FROM SpotifyClone.seguidores AS S
INNER JOIN SpotifyClone.artistas AS A
ON S.artista_id = A.artista_id
GROUP BY A.artista_nome
ORDER BY seguidores DESC, artista
LIMIT 3;
