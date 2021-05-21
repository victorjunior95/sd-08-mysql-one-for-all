CREATE VIEW perfil_artistas AS
SELECT
a.nome AS artista,
alb.nome AS album,
COUNT(sa.artista_id) AS seguidores
FROM SpotifyClone.albuns AS alb
INNER JOIN artistas a ON a.artista_id = alb.artista_id
INNER JOIN seguindo_artistas sa ON sa.artista_id = alb.artista_id
GROUP BY a.nome, alb.nome, sa.artista_id
ORDER BY 3 DESC, 1;
