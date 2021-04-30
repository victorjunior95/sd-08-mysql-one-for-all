CREATE VIEW top_2_hits_do_momento AS
SELECT M.Nome AS `cancao`,
COUNT(H.IdMusica) AS `reproducoes`
FROM HistoricoDeMusicas H
INNER JOIN Musicas M
ON M.idMusica = H.idMusica
GROUP BY `cancao`
ORDER BY `reproducoes` DESC, `cancao`
LIMIT 2; 
