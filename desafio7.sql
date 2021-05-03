CREATE VIEW perfil_artistas AS
SELECT 
g.`seguindo_artistas` AS `artista`,
g.`album`,
COUNT(*) AS `seguidores` 
FROM
(
SELECT s.seguindo_artistas, a.album
FROM SpotifyClone.Seguidos AS s
INNER JOIN SpotifyClone.Albuns AS a
ON a.artista_id = s.artista_id
) AS g
GROUP BY `album`, `artista`
ORDER BY `seguidores` DESC, `artista` ASC, `album` ASC;
