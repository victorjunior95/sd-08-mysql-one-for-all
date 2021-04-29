CREATE VIEW estatisticas_musicais AS
  SELECT
    COUNT(S.song) AS cancoes,
    COUNT(DISTINCT A.artist) AS artistas,
    COUNT(DISTINCT AL.album) AS albums
  FROM SpotifyClone.songs AS S
INNER JOIN SpotifyClone.albums AS AL ON AL.album_id = S.album_id;
INNER JOIN SpotifyClone.artists AS A ON A.artist_id = AL.artist_id
