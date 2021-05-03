
CREATE VIEW SpotifyClone.faturamento_atual AS
SELECT CAST(MIN(mi.valor_plano) AS DECIMAL(10, 2)) AS faturamento_minimo , MAX(mi.valor_plano) AS faturamento_maximo,
Round(avg(mi.valor_plano), 2) AS faturamento_medio, round(sum(mi.valor_plano), 2) AS faturamento_total
FROM SpotifyClone._planos AS mi INNER JOIN SpotifyClone._usuarios AS u ON u.plano_id = mi.plano_id;
