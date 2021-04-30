CREATE VIEW top_3_artistas AS
SELECT 
a.nome AS 'artista', COUNT(s.usuario_id) AS 'seguidores'
FROM
SpotifyClone.artista a
INNER JOIN
SpotifyClone.seguindo s ON a.artista_id = s.artista_id
GROUP BY a.nome
ORDER BY 2 DESC , 1
LIMIT 3;
