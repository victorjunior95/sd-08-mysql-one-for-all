CREATE VIEW estatisticas_musicais AS 
SELECT
COUNT(song.song_id) AS cancoes, 
COUNT(DISTINCT (album.artist_id)) AS artistas,
COUNT(DISTINCT (song.album_id)) AS albuns
FROM SpotifyClone.Song AS song
INNER JOIN SpotifyClone.Album AS album
ON song.album_id = album.album_id;
