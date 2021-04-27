USE SpotifyClone;
CREATE VIEW estatisticas_musicais AS
SELECT 
COUNT(c.nome) AS `cancoes`,
COUNT(DISTINCT a.nome) AS `artistas`,
COUNT(DISTINCT al.album) AS `albuns`
FROM cancoes AS c
INNER JOIN albuns AS al
ON al.album_id = c.album_id
INNER JOIN artistas AS a
ON a.artista_id = al.artista_id;
