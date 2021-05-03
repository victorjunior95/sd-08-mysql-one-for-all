SELECT
(SELECT MIN(`value`) FROM SpotifyClone.table_plans)
AS faturamento_minimo,
(SELECT MAX(`value`) FROM SpotifyClone.table_plans)
AS faturamento_maximo,
ROUND(AVG((SELECT `value` FROM SpotifyClone.table_plans tp
  WHERE tp.id_plans = tu.id_plans)), 2)
AS faturamento_medio,
ROUND(SUM((SELECT `value` FROM SpotifyClone.table_plans tp
  WHERE tp.id_plans = tu.id_plans)), 2)
AS faturamento_total
FROM
SpotifyClone.table_users tu;
