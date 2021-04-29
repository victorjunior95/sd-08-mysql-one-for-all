CREATE VIEW faturamento_atual AS
  SELECT
    MIN(plan_price) AS faturamento_minimo,
    MAX(plan_price) AS faturamento_maximo,
    ROUND(AVG(plan_price), 2) AS faturamento_medio,
    SUM(plan_price) AS faturamento_total
  FROM SpotifyClone.plans AS p
  INNER JOIN SpotifyClone.users AS u ON p.plan_id = u.plan_id;
