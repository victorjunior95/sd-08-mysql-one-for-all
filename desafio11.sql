CREATE VIEW cancoes_premium AS
SELECT c.nome AS nome, COUNT(h.cancao_id) AS reproducoes
FROM Cancoes as c
INNER JOIN Historico as h
ON c.cancao_id = h.cancao_id
INNER JOIN Usuarios as u
ON u.usuario_id = h.usuario_id
INNER JOIN Planos as p
ON u.plano_id = p.plano_id
WHERE p.nome IN('familiar', 'universitario')
GROUP BY c.nome
ORDER BY nome;
