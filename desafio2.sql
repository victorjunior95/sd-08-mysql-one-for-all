CREATE VIEW estatisticas_musicais AS
SELECT
	COUNT(DISTINCT songs.song_id) AS cancoes, 
	COUNT(DISTINCT artists.artist_id) AS artistas, 
	COUNT(DISTINCT albums.album_id) AS albuns
FROM 
	SpotifyClone.songs AS songs 
	CROSS JOIN SpotifyClone.artists AS artists 
	CROSS JOIN SpotifyClone.albums AS albums;
-- https://www.w3schools.com/mysql/mysql_join_cross.asp
