CREATE VIEW SpotifyClone.faturamento_atual AS
SELECT
  FORMAT(MIN(p.price), 2) AS faturamento_minimo,
  FORMAT(MAX(p.price), 2) AS faturamento_maximo,
  FORMAT(ROUND(AVG(p.price), 2), 2) AS faturamento_medio,
  FORMAT(SUM(p.price), 2) AS faturamento_total
FROM plans AS p
INNER JOIN users AS u
ON u.plan_id = p.plan_id;
