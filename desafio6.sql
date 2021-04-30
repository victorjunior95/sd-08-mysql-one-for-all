CREATE VIEW faturamento_atual AS
SELECT ROUND(MIN(sp.valor_plano), 2) AS 'faturamento_minimo',
ROUND(MAX(sp.valor_plano), 2) AS 'faturamento_maximo',
ROUND(AVG(sp.valor_plano), 2) AS 'faturamento_medio',
ROUND(SUM(sp.valor_plano), 2) AS 'faturamento_total'
FROM SpotifyClone.planos AS sp
INNER JOIN SpotifyClone.usuarios AS su
ON sp.plano_id = su.plano_id;
