CREATE VIEW cancoes_premium AS
SELECT Cancao.Nome AS 'nome', COUNT(history.Cancao_id) AS 'reproducoes' FROM Historico_Cancao AS history
INNER JOIN Cancao ON Cancao.Cancao_id = history.Cancao_id
INNER JOIN Usuario ON Usuario.Usuario_id = history.Usuario_id
INNER JOIN Plano ON Plano.Plano_id = Usuario.Plano_id
WHERE Plano.Plano IN ('familiar', 'universitário') GROUP BY Cancao.Nome ORDER BY `nome`;
