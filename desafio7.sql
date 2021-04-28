CREATE VIEW perfil_artistas AS
SELECT
CONCAT(art.nome, ' ', art.sobrenome) AS 'artista',
alb.nome_album AS 'album',
COUNT(s.usuario_id) AS 'seguidores'
FROM SpotifyClone.artistas AS art
INNER JOIN SpotifyClone.album AS alb
ON art.artistas_id = alb.artistas_id
INNER JOIN SpotifyClone.seguindo_artistas AS s
ON s.artistas_id = art.artistas_id
GROUP BY alb.album_id
ORDER BY `seguidores` DESC, `artista`, `album`;
