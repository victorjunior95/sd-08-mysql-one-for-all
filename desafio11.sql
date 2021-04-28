CREATE VIEW cancoes_premium AS
SELECT c.cancao AS 'nome',
COUNT(uc.cancao_id) AS 'reproducoes'
FROM Usuario_Cancao AS uc
INNER JOIN Cancao AS c ON c.cancao_id = uc.cancao_id
INNER JOIN Usuario AS u ON u.usuario_id = uc.usuario_id
INNER JOIN Plano AS p ON p.plano_id = u.plano_id
WHERE p.plano IN ('familiar', 'universitário')
GROUP BY c.cancao
ORDER BY `nome`;
