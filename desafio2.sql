CREATE VIEW estatisticas_musicais AS
SELECT
COUNT(c.cancao) AS cancoes,
COUNT(DISTINCT art.artista) AS artistas,
COUNT(DISTINCT alb.album) AS albuns
FROM SpotifyClone.cancoes AS c
INNER JOIN SpotifyClone.album AS alb ON alb.album_id = c.album_id
INNER JOIN SpotifyClone.artistas AS art ON art.artista_id = alb.artista_id;
