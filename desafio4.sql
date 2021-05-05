CREATE VIEW top_3_artistas AS
SELECT a.artist_name AS artista, COUNT(*) AS seguidores
FROM followed_artist AS f
INNER JOIN artist AS a ON a.artist_id = f.artist_id
GROUP BY artista
ORDER BY seguidores DESC , artista
LIMIT 3;
