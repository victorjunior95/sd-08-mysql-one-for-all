CREATE VIEW `estatisticas_musicais1`
AS
SELECT
(SELECT COUNT(sings) FROM SpotifyClone.table_sings) AS cancoes,
(SELECT COUNT(stars) FROM SpotifyClone.table_stars ts) AS artistas,
(SELECT COUNT(albuns) FROM SpotifyClone.table_albuns ta) AS albuns;
