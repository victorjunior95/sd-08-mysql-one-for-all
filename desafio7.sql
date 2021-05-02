CREATE VIEW perfil_artistas AS
SELECT 
sub.`artista` AS 'artista',
sub.`album` AS 'album',
sub.`seguidores` AS 'seguidores'
FROM(
SELECT  ar.artistaName AS 'artista', al.album AS  'album' ,  CONVERT(SUM(CASE WHEN s.artista_id = al.artista_id THEN 1 ELSE 0 END ),UNSIGNED INTEGER)  AS 'seguidores'  FROM SpotifyClone.Albums AS al
INNER JOIN SpotifyClone.Artistas AS ar
ON ar.artista_id = al.artista_id
INNER JOIN SpotifyClone.Seguidores AS s
ON s.artista_id = al.artista_id
GROUP BY al.album_id
) AS sub
ORDER BY 3  DESC,1;

-- Error Code: 1140. In aggregated query without GROUP BY, expression #1 of SELECT list contains nonaggregated column 'SpotifyClone.ar.artistaName'; this is incompatible with sql_mode=only_full_group_by
-- Error Code: 1055. Expression #1 of SELECT list is not in GROUP BY clause and contains nonaggregated column 'SpotifyClone.ar.artistaName' which is not functionally dependent on columns in GROUP BY clause; this is incompatible with sql_mode=only_full_group_by
