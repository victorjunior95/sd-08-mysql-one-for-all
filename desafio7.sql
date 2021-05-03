CREATE VIEW perfil_artistas AS
SELECT a.name AS artista, l.name AS album, count(f.artist_id) AS seguidores
FROM SpotifyClone.artists AS a
INNER JOIN SpotifyClone.albuns AS l ON a.id = l.artist_id
INNER JOIN SpotifyClone.user_follows AS f ON a.id = f.artist_id
GROUP BY l.name
ORDER BY count(f.artist_id) DESC, a.name, l.name;
