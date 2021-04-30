CREATE VIEW faturamento_atual AS
SELECT
FORMAT(MIN(p.plan_value), 2) AS faturamento_minimo,
MAX(p.plan_value) AS faturamento_maximo,
FORMAT(AVG(CEIL(p.plan_value)), 2) AS faturamento_medio,
FORMAT(SUM(p.plan_value), 2) AS faturamento_total
FROM 
SpotifyClone.plan AS p
INNER JOIN SpotifyClone.user as u
ON p.plan_id = u.plan_id;
