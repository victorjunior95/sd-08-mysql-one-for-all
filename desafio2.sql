-- https://www.devmedia.com.br/sql-distinct/41213
CREATE VIEW estatisticas_musicais AS
SELECT COUNT(M.idMusica) AS `cancoes`,
COUNT(DISTINCT AR.idArtista) AS `artistas`,
COUNT(DISTINCT AB.idAlbum) AS `albuns`
FROM Musicas M
INNER JOIN Albuns AB
ON AB.idAlbum = M.idAlbum
INNER JOIN Artistas AR
ON AR.idArtista = AB.idArtista;
