CREATE VIEW perfil_artistas AS
SELECT 
a.nome AS 'artista',
al.album AS 'album',
COUNT(s.artista_id) AS 'seguidores'
FROM artistas AS a
INNER JOIN albuns AS al
ON al.artista_id = a.artista_id
INNER JOIN seguidores AS s
ON s.artista_id = a.artista_id
GROUP BY a.artista_id
ORDER BY `seguidores` DESC, `artista` ASC, `album` ASC;
