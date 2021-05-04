CREATE VIEW faturamento_atual AS
SELECT
  CAST(MIN(valor) AS DECIMAL(10, 2)) AS 'faturamento_minimo',
  CAST(MAX(valor) AS DECIMAL(10, 2)) AS 'faturamento_maximo',
  CAST((SUM(valor) / COUNT(*)) AS DECIMAL(10, 2)) AS 'faturamento_medio',
  CAST(SUM(valor) AS DECIMAL(10, 2)) AS 'faturamento_total'
FROM SpotifyClone.Usuarios AS U
INNER JOIN SpotifyClone.Planos AS P
ON U.plano_id = P.plano_id
