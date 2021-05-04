CREATE VIEW perfil_artistas AS
SELECT artista, album, COUNT(*) AS `seguidores`
FROM SpotifyClone.Seguidos AS s
INNER JOIN SpotifyClone.Albuns AS al ON al.artista_id = s.artista_id
INNER JOIN SpotifyClone.Artistas AS ar ON ar.artista_id = al.artista_id
GROUP BY `artista`, `album`
ORDER BY `seguidores` DESC, `artista` ASC, `album` ASC;
