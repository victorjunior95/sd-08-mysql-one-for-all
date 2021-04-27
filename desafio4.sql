USE SpotifyClone;

CREATE VIEW top_3_artistas AS
SELECT a.artist AS artista, COUNT(f.artist_id) AS seguidores
FROM Artists AS a
INNER JOIN Artist_followers AS f ON f.artist_id = a.artist_id 
GROUP BY artista
ORDER BY seguidores DESC, artista
LIMIT 3;
