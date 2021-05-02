USE SpotifyClone;
CREATE VIEW estatisticas_musicais AS
  SELECT
    COUNT(DISTINCT songs.cancao_id) AS cancoes,
    COUNT(DISTINCT artists.artista_id) AS artistas,
    COUNT(DISTINCT albums.album_id) AS albuns
  FROM songs, artists, albums;
