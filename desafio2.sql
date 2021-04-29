CREATE VIEW estatisticas_musicais AS
  SELECT
    (SELECT count(song) FROM SpotifyClone.songs) AS cancoes,
    (SELECT count(artist) FROM SpotifyClone.artists) AS artistas,
    (SELECT count(album) FROM SpotifyClone.albums) AS albuns;
