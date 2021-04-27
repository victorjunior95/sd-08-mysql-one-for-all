CREATE VIEW top_3_artistas AS
SELECT
CONCAT(a.nome, ' ', a.sobrenome) AS 'artista',
COUNT(u.usuario_id) AS 'seguidores'
FROM SpotifyClone.artistas as a
INNER JOIN SpotifyClone.seguindo_artistas as s
ON a.artistas_id = s.artistas_id
INNER JOIN SpotifyClone.usuario as u
ON u.usuario_id = s.usuario_id
GROUP BY a.artistas_id
ORDER BY `seguidores` DESC, `artista`
LIMIT 3;
