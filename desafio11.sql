CREATE VIEW cancoes_premium AS
SELECT 
c.cancao AS `nome`, COUNT(*) AS `reproducoes`
FROM usuario_historico AS h
INNER JOIN cancao AS c 
ON c.cancao_id = h.cancao_id
INNER JOIN usuario AS u 
ON u.usuario_id = h.usuario_id
WHERE u.plano_id IN (2 , 3)
GROUP BY `nome`
ORDER BY `nome`;
