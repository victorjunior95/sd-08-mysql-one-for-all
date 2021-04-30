USE SpotifyClone;

CREATE VIEW estatisticas_musicais
AS
SELECT COUNT(tss.sings) AS cancoes,
(SELECT COUNT(ts.stars) FROM table_stars ts) AS artistas,
(SELECT COUNT(ta.albuns) FROM table_albuns ta) AS albuns
FROM table_sings tss;
