CREATE VIEW top_2_hits_do_momento AS
SELECT Cancao.Nome AS 'cancao', COUNT(history.Cancao_id) AS 'reproducoes' FROM Cancao
INNER JOIN Historico_Cancao history ON history.Cancao_id = Cancao.Cancao_id
GROUP BY Cancao.Nome ORDER BY `reproducoes` DESC, `cancao` LIMIT 2;
