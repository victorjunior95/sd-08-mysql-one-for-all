CREATE VIEW faturamento_atual AS
SELECT CAST(MIN(p.plano_valor) AS DECIMAL(10, 2)) AS 'faturamento_minimo',
  CAST(MAX(p.plano_valor) AS DECIMAL(10, 2)) AS 'faturamento_maximo',
  CAST(
    (SUM(p.plano_valor) / COUNT(*)) AS DECIMAL(10, 2)
  ) AS 'faturamento_medio',
  CAST(SUM(p.plano_valor) AS DECIMAL(10, 2)) AS 'faturamento_total'
FROM SpotifyClone.usuarios AS u
  INNER JOIN SpotifyClone.planos AS p ON u.plano_id = p.plano_id;
