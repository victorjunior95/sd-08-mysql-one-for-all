CREATE VIEW cancoes_premium AS
SELECT M.Nome AS `nome`,
COUNT(HR.idUser) AS `reproducoes`
FROM HistoricoDeMusicas AS HR
INNER JOIN Musicas AS M
ON M.idMusica = HR.idMusica
INNER JOIN Users AS U
ON U.idUser = HR.idUser
WHERE U.idPlano = 2 OR U.idPlano = 3
GROUP BY `nome`
ORDER BY `nome`;
