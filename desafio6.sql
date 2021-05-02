CREATE VIEW faturamento_atual AS
SELECT CAST(MIN(plano.valor) AS DECIMAL(10,2)) AS faturamento_minimo,
CAST(MAX(plano.valor) AS DECIMAL(10,2)) AS faturamento_maximo,
CAST(AVG(plano.valor) AS DECIMAL(10, 2)) AS faturamento_medio,
CAST(SUM(plano.valor) AS DECIMAL(10,2)) AS faturamento_total
FROM SpotifyClone.planos plano
INNER JOIN SpotifyClone.usuarios usuario
ON usuario.plano_id = plano.plano_id;
