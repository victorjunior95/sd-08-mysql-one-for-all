CREATE VIEW faturamento_atual AS
SELECT MIN(PLAN.Valor) AS faturamento_minimo,
MAX(PLAN.Valor) AS faturamento_maximo,
ROUND(AVG(PLAN.Valor), 2) AS faturamento_medio,
SUM(PLAN.Valor) AS faturamento_total
FROM SpotifyClone.Plano AS PLAN
INNER JOIN SpotifyClone.Usuario AS USER ON PLAN.Plano_id = USER.Plano_id;
