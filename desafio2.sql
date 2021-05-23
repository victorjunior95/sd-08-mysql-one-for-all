USE SpotifyClone;

CREATE VIEW estatisticas_musicais AS SELECT
(SELECT COUNT(*) FROM cancoes) AS "cancoes",
(SELECT COUNT(*) FROM todos_os_artistas) AS "artistas",
(SELECT COUNT(*) FROM albuns) AS "albuns";
