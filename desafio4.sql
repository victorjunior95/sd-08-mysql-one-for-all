CREATE VIEW top_3_artistas AS
SELECT b.artista_name AS 'artista', COUNT(a.artista_id) AS 'seguidores' 
FROM SpotifyClone.users_follow_artistas a 
INNER JOIN SpotifyClone.artistas b ON a.artista_id = b.artista_id
GROUP BY a.artista_id
ORDER BY `seguidores` DESC, `artista`
LIMIT 3;
