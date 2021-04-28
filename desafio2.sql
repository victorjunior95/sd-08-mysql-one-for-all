CREATE VIEW estatisticas_musicais AS
SELECT COUNT(DISTINCT s.song_title) AS cancoes,
COUNT(DISTINCT a.artist_id) AS artistas,
COUNT(DISTINCT alb.album_name) AS albuns
FROM SpotifyClone.songs AS s, SpotifyClone.artists AS a, SpotifyClone.albums AS alb;
