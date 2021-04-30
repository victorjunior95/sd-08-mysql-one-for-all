CREATE VIEW top_3_artistas AS
SELECT E.Nome AS `artista`,
COUNT(S.idArtista) AS `seguidores`
FROM Artistas E
INNER JOIN Seguindo S
ON E.idArtista = S.idArtista
GROUP BY `artista`
ORDER BY `seguidores` DESC, `artista`
LIMIT 3;
