CREATE VIEW perfil_artistas AS
SELECT ar.nome AS 'artista',
al.album AS 'album',
COUNT(ua.usuario_id) AS 'seguidores'
FROM SpotifyClone.Album AS al
INNER JOIN SpotifyClone.Artista AS ar ON ar.artista_id = al.artista_id
INNER JOIN SpotifyClone.Usuario_Artista AS ua ON ua.artista_id = ar.artista_id
GROUP BY `artista`, `album`
ORDER BY `seguidores` DESC, `artista`, `album`;
