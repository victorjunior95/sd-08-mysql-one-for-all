CREATE VIEW estatisticas_musicais AS 
SELECT
COUNT(DISTINCT SGS.song_title) AS 'cancoes',
COUNT(DISTINCT AR.artist_name) AS 'artistas',
COUNT(DISTINCT ALB.album_title) AS 'albuns'
FROM SpotifyClone.all_artist AS AR, SpotifyClone.all_songs SGS, SpotifyClone.all_album ALB;
