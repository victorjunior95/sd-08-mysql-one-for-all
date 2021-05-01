CREATE VIEW perfil_artistas AS
SELECT
art.artist_name AS `artista`,
alb.album_title AS `album`,
COUNT(fol.follows_artist_id) AS `seguidores`
FROM SpotifyClone.artists AS art
INNER JOIN SpotifyClone.albums AS alb
ON art.artist_id = alb.album_author_id
LEFT JOIN SpotifyClone.following AS fol
ON art.artist_id = fol.follows_artist_id
GROUP BY `album`
ORDER BY `seguidores` DESC, `artista`, `album`;
