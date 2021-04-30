CREATE VIEW perfil_artistas AS
SELECT 
a.nome AS 'artista',
al.titulo AS 'album',
COUNT(*) AS 'seguidores'
FROM
SpotifyClone.seguindo AS s
INNER JOIN
SpotifyClone.artista AS a ON a.artista_id = s.artista_id
INNER JOIN
SpotifyClone.album al ON al.artista_id = s.artista_id
GROUP BY al.album_id
ORDER BY 3 DESC , 1 ,2;
