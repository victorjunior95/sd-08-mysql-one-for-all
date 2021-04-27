CREATE VIEW estatisticas_musicais AS
SELECT
COUNT(c.cancao_id) AS `cancoes`,
COUNT(DISTINCT a.artista_id) AS `artistas`,
COUNT(DISTINCT a.album_id) AS `albuns`
FROM SpotifyClone.cancoes AS c
INNER JOIN SpotifyClone.album AS a
ON c.album_id = a.album_id;
