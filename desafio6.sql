CREATE VIEW faturamento_atual AS
SELECT
CAST(MIN(p.valor_plano) AS DECIMAL(5,2)) AS faturamento_minimo,
CAST(MAX(p.valor_plano) AS DECIMAL(5,2)) AS faturamento_maximo,
CAST(AVG(p.valor_plano) AS DECIMAL(5,2)) AS faturamento_medio,
CAST(SUM(p.valor_plano) AS DECIMAL(5,2)) AS faturamento_total
FROM SpotifyClone.usuario AS u
INNER JOIN planos p ON p.plano_id = u.plano_id;
