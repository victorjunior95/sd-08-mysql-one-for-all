CREATE VIEW estatisticas_musicais AS
  SELECT
    (SELECT count(id) FROM SpotifyClone.songs) AS cancoes,
    (SELECT count(id) FROM SpotifyClone.artists) AS artistas,
    (SELECT count(id) FROM SpotifyClone.albuns) AS albuns;
