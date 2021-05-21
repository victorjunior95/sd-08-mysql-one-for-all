CREATE VIEW faturamento_atual AS
SELECT
ROUND(MIN(plan_price), 2) AS faturamento_minimo,
ROUND(MAX(plan_price), 2) AS faturamento_maximo,
ROUND(AVG(plan_price), 2) AS faturamento_medio,
ROUND(SUM(plan_price), 2) AS faturamento_total
FROM SpotifyClone.users AS u
INNER JOIN SpotifyClone.available_plans AS ap
WHERE u.plan_id = ap.plan_id
