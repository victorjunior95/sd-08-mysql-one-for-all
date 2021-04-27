CREATE VIEW estatisticas_musicais AS
(SELECT * FROM (SELECT COUNT(cancao_id) AS `cancoes` FROM Cancoes) AS `cancoes`,
(SELECT COUNT(artista_id) AS `artistas` FROM Artistas) AS `artistas`,
(SELECT COUNT(album_id) AS `albuns` FROM Albuns) AS `albuns`);
