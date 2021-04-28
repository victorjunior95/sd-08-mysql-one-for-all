CREATE OR REPLACE VIEW estatisticas_musicais AS 
SELECT COUNT(s.title) AS `cancoes`,
COUNT(DISTINCT ar.artist_id) AS `artistas`,
COUNT(DISTINCT al.album_id) AS `albuns`
FROM SpotifyClone.songs AS s 
INNER JOIN SpotifyClone.album AS al
ON al.album_id = s.album_id
INNER JOIN SpotifyClone.artists AS ar
 ON ar.artist_id = al.artist_id;

SELECT * FROM estatisticas_musicais;