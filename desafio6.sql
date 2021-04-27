CREATE VIEW faturamento_atual AS
  SELECT
  MIN(P.PRICE) AS 'faturamento_minimo',
  MAX(P.PRICE) AS 'faturamento_maximo',
  ROUND(AVG(P.PRICE), 2) AS 'faturamento_medio',
  SUM(P.PRICE) AS 'faturamento_total'
  FROM plans AS P
  INNER JOIN users AS U
  ON P.PLAN_ID = U.PLAN_ID;
