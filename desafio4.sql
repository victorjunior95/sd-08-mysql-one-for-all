CREATE VIEW top_3_artistas AS
SELECT a.nome AS 'artista', COUNT(*) AS 'seguidores'
FROM SpotifyClone.artistas_favoritos AS f
INNER JOIN SpotifyClone.usuario AS u ON f.id_usuario = u.id_usuario
INNER JOIN SpotifyClone.artista AS a ON f.id_artista = a.id_artista
GROUP BY a.nome
ORDER BY COUNT(*) DESC, a.nome
LIMIT 3;
