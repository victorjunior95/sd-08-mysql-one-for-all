CREATE VIEW top_3_artistas AS
SELECT a.nome AS `artista`, COUNT(u.usuario_id) AS `seguidores` FROM SpotifyClone.usuario_seguindo_artista AS usa
INNER JOIN SpotifyClone.artistas AS a ON a.artista_id = usa.artista_id
INNER JOIN SpotifyClone.usuarios AS u ON u.usuario_id = usa.usuario_id
GROUP BY a.nome
ORDER BY `seguidores` DESC, a.nome
LIMIT 3;
