CREATE VIEW estatisticas_musicais AS
  SELECT
    COUNT(DISTINCT songs.cancao_id) AS cancoes,
    COUNT(DISTINCT artists.artista_id) AS artistas,
    COUNT(DISTINCT albums.album_id) AS albuns
  FROM
    SpotifyClone.songs AS songs,
    SpotifyClone.artists AS artists,
    SpotifyClone.albums AS albums;
