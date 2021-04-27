CREATE VIEW faturamento_atual AS
SELECT
MIN(ROUND(p.plano_valor, 2)) AS faturamento_minimo,
MAX(ROUND(p.plano_valor, 2)) AS faturamento_maximo,
ROUND(AVG(p.plano_valor),2) AS faturamento_medio,
SUM(plano_valor) AS faturamento_total
FROM SpotifyClone.Planos AS p
INNER JOIN SpotifyClone.Usuario AS u ON p.planos_id = u.planos_id;
