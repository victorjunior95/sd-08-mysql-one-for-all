CREATE VIEW perfil_artistas AS
SELECT E.Nome AS `artista`,
B.Nome AS `album`,
COUNT(S.idArtista) AS `seguidores`
FROM Artistas E
INNER JOIN Seguindo S
ON E.idArtista = S.idArtista
INNER JOIN Albuns B
ON E.idArtista = B.idArtista
GROUP BY `artista`, `album`
ORDER BY `seguidores` DESC, `artista`, `album`;
