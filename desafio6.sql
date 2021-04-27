CREATE VIEW faturamento_atual AS
SELECT
  CONVERT(FORMAT(MIN(p.valor_plano), 2), CHAR) AS 'faturamento_minimo',
  CONVERT(ROUND(MAX(p.valor_plano), 2), CHAR) AS 'faturamento_maximo',
  CONVERT(FORMAT((CEIL(AVG(p.valor_plano) * 2) / 2), 2), CHAR) AS 'faturamento_medio',
  CONVERT(ROUND(SUM(p.valor_plano), 2), CHAR) AS 'faturamento_total'
FROM plano p
INNER JOIN usuario u
  ON u.plano_id = p.plano_id;
