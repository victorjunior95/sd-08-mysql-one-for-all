CREATE VIEW faturamento_atual AS
SELECT
ROUND(MIN(plano_valor), 2) AS faturamento_minimo,
ROUND(MAX(plano_valor), 2) AS faturamento_maximo,
ROUND(AVG(plano_valor), 2) AS faturamento_medio,
ROUND(SUM(plano_valor), 2) AS faturamento_total
FROM SpotifyClone.usuarios AS usuarios
INNER JOIN SpotifyClone.planos AS planos
WHERE usuarios.plano_id = planos.plano_id;
