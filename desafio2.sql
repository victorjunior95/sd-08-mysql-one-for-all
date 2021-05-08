CREATE VIEW estatisticas_musicas AS 
SELECT
COUNT(*) AS cancoes;
(SELECT COUNT(*) FROM SpotifyClone.Artista) AS artistas,
(SELECT COUNT(*) FROM SpotifyClone.Album) AS albuns,
FROM SpotifyClone.Musicas;
