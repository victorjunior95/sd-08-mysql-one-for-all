USE SpotifyClone;

CREATE VIEW estatisticas_musicais
AS
SELECT COUNT(tss.sings) AS cancoes,
(SELECT COUNT(ts.stars) AS artistas FROM table_stars ts),
(SELECT COUNT(ta.albuns) AS albuns FROM table_albuns ta)
FROM table_sings tss;
