CREATE VIEW faturamento_atual AS
SELECT ROUND(MIN(plan_cost), 2) AS faturamento_minimo,
ROUND(MAX(plan_cost),2) AS faturamento_maximo,
ROUND(SUM(plan_cost) / 4, 2) AS faturamento_medio,
ROUND(SUM(plan_cost),2) AS faturamento_total
FROM SpotifyClone.plans;
