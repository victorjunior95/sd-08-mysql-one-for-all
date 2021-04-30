CREATE VIEW perfil_artistas AS
SELECT 
b.artista_name AS 'artista',
a.album_name AS 'album',
c.`count` AS 'seguidores'
FROM SpotifyClone.albuns a
INNER JOIN SpotifyClone.artistas b ON a.artista_id = b.artista_id
INNER JOIN (
SELECT artista_id AS 'artistaID', COUNT(artista_id) AS 'count'
FROM SpotifyClone.users_follow_artistas GROUP BY artista_id
) c ON a.artista_id = c.`artistaID`
ORDER BY `seguidores` DESC, `artista`, `album`;
