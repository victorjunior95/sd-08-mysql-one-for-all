CREATE VIEW estatisticas_musicais AS
SELECT COUNT(song_id) AS cancoes,
COUNT(DISTINCT(a.artist_id)) AS artistas,
COUNT(DISTINCT(a.album_id)) AS albuns
FROM SpotifyClone.Songs AS s
INNER JOIN SpotifyClone.Albums as a
ON a.album_id = s.album_id;
