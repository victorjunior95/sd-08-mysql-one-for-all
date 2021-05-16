CREATE VIEW estatisticas_musicais AS
SELECT 
COUNT(can.cancao) AS cancoes,
COUNT(DISTINCT art.artista) AS artistas,
COUNT(DISTINCT alb.album) AS albuns
FROM 
SpotifyClone.album AS alb
INNER JOIN 
SpotifyClone.artista  AS art
ON alb.artista_id = art.artista_id
INNER JOIN 
SpotifyClone.cancao AS can
ON alb.album_id = can.album_id;
