CREATE VIEW perfil_artistas AS
SELECT
artistas.artista_nome AS `artista`,
albuns.album_name AS `album`,
COUNT(DISTINCT seguindo.usuario_id) AS `seguidores`
FROM SpotifyClone.Artistas AS artistas
INNER JOIN SpotifyClone.SeguindoArtistas AS seguindo
ON artistas.artista_id = seguindo.artista_id
INNER JOIN SpotifyClone.Albuns AS albuns
ON seguindo.artista_id = albuns.artista_id
GROUP BY `artista`, `album`
ORDER BY `seguidores` DESC, `artista`, `album`;
