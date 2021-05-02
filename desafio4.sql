CREATE VIEW top_3_artistas AS
SELECT a.artista_nome artista, count(s.artista_id) seguidores
FROM SpotifyClone.artistas a
INNER JOIN SpotifyClone.seguidores s
ON a.artista_id = s.artista_id
GROUP BY s.artista_id
ORDER BY `seguidores` DESC, `artista`;
