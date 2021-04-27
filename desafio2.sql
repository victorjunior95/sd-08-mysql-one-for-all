USE SpotifyClone;

CREATE VIEW estatisticas_musicais AS
SELECT
COUNT(DISTINCT s.song) AS cancoes,
COUNT(DISTINCT a.artist) AS artistas,
COUNT(DISTINCT al.album) AS albuns FROM Songs AS s
INNER JOIN Albums AS al ON al.album_id = s.album_id
INNER JOIN Artists AS a ON a.artist_id = al.artist_id;
