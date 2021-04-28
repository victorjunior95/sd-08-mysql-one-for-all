CREATE VIEW faturamento_atual AS
SELECT
CAST(MIN(p.valor) AS DECIMAL(5, 2)) AS 'faturamento_minimo',
CAST(MAX(p.valor) AS DECIMAL(5, 2)) AS 'faturamento_maximo',
CAST(ROUND(AVG(p.valor), 2) AS DECIMAL(5, 2)) AS 'faturamento_medio',
CAST(SUM(p.valor) AS DECIMAL(5, 2)) AS 'faturamento_total'
FROM SpotifyClone.plano AS p
INNER JOIN SpotifyClone.usuario AS u
ON p.plano_id = u.plano_id;
