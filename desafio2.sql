USE SpotifyClone;

CREATE VIEW `estatisticas_musicais`
AS
SELECT COUNT(tss.sings) AS cancoes,
(SELECT COUNT(ts.stars) FROM SpotifyClone.table_stars ts) AS artistas,
(SELECT COUNT(ta.albuns) FROM SpotifyClone.table_albuns ta) AS albuns
FROM SpotifyClone.table_sings tss;
