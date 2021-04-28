CREATE VIEW faturamento_atual AS

SELECT
MIN(p.valor_plano) AS 'faturamento_minimo',
MAX(p.valor_plano) AS 'faturamento_maximo',
ROUND(SUM(p.valor_plano) / COUNT(u.usuario_id), 2) AS 'faturamento_medio',
SUM(p.valor_plano) AS 'faturamento_total'
FROM planos AS p
INNER JOIN usuarios AS u
ON p.plano_id = u.plano_id;
