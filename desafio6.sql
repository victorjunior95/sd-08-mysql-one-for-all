CREATE VIEW faturamento_atual AS
SELECT
CAST(MIN(pla.valor) AS DECIMAL(10, 2)) AS faturamento_minimo,
CAST(MAX(pla.valor)AS DECIMAL(10, 2)) AS faturamento_maximo,
CAST(ROUND(AVG(pla.valor), 2) AS DECIMAL(10, 2)) AS faturamento_medio,
CAST(SUM(pla.valor) AS DECIMAL(10, 2)) AS faturamento_total
FROM SpotifyClone.planos AS pla
INNER JOIN SpotifyClone.usuarios AS usu ON usu.plano_id = pla.plano_id;
