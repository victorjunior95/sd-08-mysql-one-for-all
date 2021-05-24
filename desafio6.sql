CREATE VIEW faturamento_atual AS
  SELECT
    (
      SELECT
      plans.value
      FROM SpotifyClone.plans
      WHERE name = "gratuito"
    ) AS faturamento_minimo,
    (
      SELECT
      plans.value
      FROM SpotifyClone.plans
      WHERE name = "familiar"
    ) AS faturamento_maximo,
    ROUND(AVG(plans.value), 2) AS faturamento_medio,
    SUM(plans.value) AS faturamento_total
  FROM SpotifyClone.plans
  JOIN SpotifyClone.users ON users.plan_id = plans.plan_id;
