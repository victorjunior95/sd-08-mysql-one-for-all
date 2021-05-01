CREATE VIEW top_3_artistas AS
SELECT 
sub.`artista` AS 'artista',
sub.`seguidores` AS 'seguidores'
FROM(
SELECT  a.artistaName AS 'artista', COUNT( s.artista_id )  AS 'seguidores' FROM SpotifyClone.Seguidores AS s
INNER JOIN SpotifyClone.Artistas AS a
ON a.artista_id = s.artista_id
GROUP BY s.artista_id
) AS sub
ORDER BY 2 DESC, 1 LIMIT 3;
