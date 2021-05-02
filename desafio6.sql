CREATE VIEW faturamento_atual AS
  SELECT
    MIN(valor_plano) AS faturamento_minimo,
    MAX(valor_plano) AS faturamento_maximo,
    ROUND(AVG(valor_plano), 2) AS faturamento_medio,
    SUM(valor_plano) AS faturamento_total
  FROM
    (SELECT plans.valor_plano
      FROM SpotifyClone.users AS users
    INNER JOIN SpotifyClone.plans AS plans
      ON users.plano_id = plans.plano_id)
  AS planos;
