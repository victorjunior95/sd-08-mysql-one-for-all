CREATE VIEW estatisticas_musicais AS
SELECT count(DISTINCT S.song_name) AS cancoes,
count( DISTINCT Ar.artist_name) AS artistas,
count( DISTINCT A.album_id) AS albuns
FROM SpotifyClone.song AS S
INNER JOIN SpotifyClone.album AS A
ON S.album_id = A.album_id
INNER JOIN SpotifyClone.artist AS Ar
ON Ar.artist_id = A.artist_id;
