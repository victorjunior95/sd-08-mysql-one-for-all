CREATE VIEW perfil_artistas AS
SELECT a.nome_artista AS 'artista', al.nome_album AS 'album', COUNT(s.artista_id) AS 'seguidores'
FROM SpotifyClone.artista AS a
INNER JOIN SpotifyClone.album AS al
ON al.artista_id = a.artista_id
INNER JOIN SpotifyClone.seguindo_artista AS s
ON al.artista_id = s.artista_id
GROUP BY `artista`, `album`
ORDER BY `seguidores` DESC, `artista`, `album`;
