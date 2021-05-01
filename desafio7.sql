CREATE VIEW perfil_artistas AS
SELECT 
sub.`artista` AS 'artista',
sub.`album` AS 'album',
sub.`seguidores` AS 'seguidores'
FROM(
SELECT  ar.artistaName AS 'artista', al.album AS  'album' , al.artista_id   AS 'seguidores'  FROM SpotifyClone.Albums AS al
INNER JOIN SpotifyClone.Artistas AS ar
ON ar.artista_id = al.artista_id
-- INNER JOIN SpotifyClone.Seguidores AS s
-- ON s.artista_id = al.artista_id
) AS sub
ORDER BY 3 DESC;

-- Error Code: 1140. In aggregated query without GROUP BY, expression #1 of SELECT list contains nonaggregated column 'SpotifyClone.ar.artistaName'; this is incompatible with sql_mode=only_full_group_by
-- Error Code: 1055. Expression #1 of SELECT list is not in GROUP BY clause and contains nonaggregated column 'SpotifyClone.ar.artistaName' which is not functionally dependent on columns in GROUP BY clause; this is incompatible with sql_mode=only_full_group_by
