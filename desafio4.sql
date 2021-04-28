CREATE VIEW top_3_artistas AS
SELECT a.nome_artista AS 'artista', COUNT(s.artista_id) AS 'seguidores'
FROM SpotifyClone.artista AS a
INNER JOIN SpotifyClone.seguindo_artista AS s
ON s.artista_id = a.artista_id
GROUP BY `artista`
ORDER BY `seguidores` DESC, `artista`
LIMIT 3;
