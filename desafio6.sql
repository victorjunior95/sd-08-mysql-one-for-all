CREATE VIEW faturamento_atual AS
SELECT
  (
    SELECT
    plano_valor
    FROM SpotifyClone.plano
    ORDER BY plano_valor
    LIMIT 1
  ) AS 'faturamento_minimo',
  (
    SELECT
    plano_valor
    FROM SpotifyClone.plano
    ORDER BY plano_valor DESC
    LIMIT 1
  ) AS 'faturamento_maximo',
  (
    SELECT 
    ROUND(AVG(plano_valor),2) 
    FROM SpotifyClone.usuario AS u
    INNER JOIN SpotifyClone.plano AS p
    ON u.plano_id = p.plano_id
  ) AS 'faturamento_medio',
  (
    SELECT 
    ROUND(SUM(plano_valor),2) 
    FROM SpotifyClone.usuario AS u
    INNER JOIN SpotifyClone.plano AS p
    ON u.plano_id = p.plano_id
  ) AS 'faturamento_total' 
