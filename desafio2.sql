CREATE VIEW estatisticas_musicais AS
SELECT
COUNT(DISTINCT s.song) AS cancoes,
COUNT(DISTINCT a.artist) AS artistas,
COUNT(DISTINCT al.album) AS albuns FROM SpotifyClone.Songs AS s
INNER JOIN SpotifyClone.Albums AS al ON al.album_id = s.album_id
INNER JOIN SpotifyClone.Artists AS a ON a.artist_id = al.artist_id;
