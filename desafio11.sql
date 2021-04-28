CREATE VIEW cancoes_premium AS

SELECT
c.nome_cancao AS 'nome',
COUNT(h.cancao_id) AS 'reproducoes'
FROM historico as h
INNER JOIN cancoes AS c
ON c.cancao_id = h.cancao_id
INNER JOIN usuarios AS u
ON u.usuario_id = h.usuario_id
INNER JOIN planos AS p
ON p.plano_id = u.plano_id
WHERE p.plano_id IN (2, 3)
GROUP BY c.nome_cancao
ORDER BY 1;
