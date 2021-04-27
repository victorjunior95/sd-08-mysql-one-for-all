USE SpotifyClone;
CREATE VIEW estatisticas_musicais AS
SELECT COUNT(song_id) AS cancoes,
COUNT(DISTINCT(a.artist_id)) AS artistas,
COUNT(DISTINCT(a.album_id)) AS albuns
FROM Songs AS s
INNER JOIN Albums as a
ON a.album_id = s.album_id;
