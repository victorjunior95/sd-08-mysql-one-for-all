CREATE VIEW faturamento_atual AS
  SELECT MIN(PLAN.price) AS `faturamento_minimo`, max(PLAN.price) AS `faturamento_maximo`,
  ROUND(AVG(PLAN.price), 2) AS `faturamento_medio`, SUM(PLAN.price) AS `faturamento_total`
  FROM SpotifyClone.Plan AS `PLAN`
  INNER JOIN SpotifyClone.User AS `USER`
  ON PLAN.plan_id = USER.plan_id;
