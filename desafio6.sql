CREATE VIEW faturamento_atual AS
  SELECT
    FORMAT(MIN(p.plano_valor), 2) AS 'faturamento_minimo',
    FORMAT(MAX(p.plano_valor), 2) AS 'faturamento_maximo',
    FORMAT(AVG(p.plano_valor), 2) AS 'faturamento_medio',
    FORMAT(SUM(p.plano_valor), 2) AS 'faturamento_total'
  FROM SpotifyClone.planos AS p
  INNER JOIN SpotifyClone.usuarios AS u ON p.plano_id = u.plano_id;
