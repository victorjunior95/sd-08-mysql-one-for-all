CREATE VIEW estatisticas_musicais AS 
SELECT
COUNT(cancoes_id) AS cancoes, 
COUNT(DISTINCT (al.artista_id)) AS artistas,
COUNT(DISTINCT (c.album_id)) AS albuns
FROM SpotifyClone.cancoes AS c
INNER JOIN
SpotifyClone.Album al
ON al.album_id = c.album_id;
