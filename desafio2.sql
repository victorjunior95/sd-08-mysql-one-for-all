-- DESAFIO 2

-- USE SpotifyClone;
CREATE VIEW estatisticas_musicais AS
SELECT
(SELECT COUNT(*) FROM SpotifyClone.album) AS albuns,
(SELECT COUNT(*) FROM SpotifyClone.artista) AS artistas,
(SELECT COUNT(*) FROM SpotifyClone.musica) AS cancoes;
