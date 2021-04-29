CREATE VIEW faturamento_atual AS
  SELECT
    FORMAT(MIN(P.plan_price), 2) AS `faturamento_minimo`,
    FORMAT(MAX(P.plan_price), 2) AS `faturamento_maximo`,
    FORMAT(AVG(P.plan_price), 2) AS `faturamento_medio`,
    FORMAT(SUM(P.plan_price), 2) AS `faturamento_total`
  FROM SpotifyClone.plans AS P
  INNER JOIN SpotifyClone.users AS U ON P.plan_id = U.plan_id;
