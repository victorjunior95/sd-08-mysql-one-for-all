CREATE VIEW estatisticas_musicais AS
SELECT COUNT(CANCAO_ID) AS `cancoes`,
(SELECT COUNT(ARTISTA_ID) FROM SpotifyClone.ARTISTAS) AS `artistas`,
(SELECT COUNT(ALBUM_ID)  FROM SpotifyClone.ALBUNS) AS `albuns`
FROM SpotifyClone.CANCOES;
