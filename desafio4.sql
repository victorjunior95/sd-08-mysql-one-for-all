CREATE VIEW top_3_artistas AS
SELECT
s.singer AS artista,
COUNT(distinct f.user_id) AS seguidores
FROM 
SpotifyClone.singer AS s
INNER JOIN SpotifyClone.following as f
ON s.singer_id = f.singer_id
GROUP BY artista
ORDER BY seguidores DESC, artista;
