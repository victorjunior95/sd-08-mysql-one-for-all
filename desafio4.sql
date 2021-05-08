CREATE VIEW top_3_artistas AS 
SELECT
art.artista_nome AS 'artista',
COUNT(*) AS 'seguidores'
FROM SpotifyClone.Artista AS 'art'
INNER JOIN SpotifyClone.Seguindo as 'seguindo'
ON seguindo.artista_id = art.artista_id
GROUP BY art.artista_nome
ORDER BY 2 DESC, 1
LIMIT 3;
