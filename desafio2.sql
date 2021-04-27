CREATE VIEW estatisticas_musicais AS
SELECT
COUNT(c.nome) AS cancoes,
COUNT(DISTINCT art.nome) AS artistas,
COUNT(DISTINCT alb.nome) AS albuns
FROM SpotifyClone.cancoes AS c
INNER JOIN SpotifyClone.album AS alb ON alb.album_id = c.album_id
INNER JOIN SpotifyClone.artistas AS art ON art.artista_id = alb.artista_id;
