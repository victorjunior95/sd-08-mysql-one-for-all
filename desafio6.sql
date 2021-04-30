CREATE VIEW faturamento_atual AS
SELECT 
ROUND(MIN(p.valor_plano), 2) AS 'faturamento_minimo',
ROUND(MAX(p.valor_plano), 2) AS 'faturamento_maximo',
ROUND(AVG(p.valor_plano), 2) AS 'faturamento_medio',
ROUND(SUM(p.valor_plano), 2) AS 'faturamento_total'
FROM SpotifyClone.planos AS sp
INNER JOIN SpotifyClone.usuarios AS su
ON su.id_plano = sp.plano_id;
