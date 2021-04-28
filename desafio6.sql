CREATE VIEW faturamento_atual AS
SELECT
  CAST(MIN(price) AS DECIMAL(10, 2)) AS 'faturamento_minimo',
  CAST(MAX(price) AS DECIMAL(10, 2)) AS 'faturamento_maximo',
  CAST((SUM(price) / COUNT(*)) AS DECIMAL(10, 2)) AS 'faturamento_medio',
  CAST(SUM(price) AS DECIMAL(10, 2)) AS 'faturamento_total'
FROM SpotifyClone.user AS U
INNER JOIN SpotifyClone.plan AS P
ON U.plan_id = P.plan_id
