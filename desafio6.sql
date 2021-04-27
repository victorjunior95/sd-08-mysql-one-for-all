CREATE VIEW faturamento_atual AS
SELECT
FORMAT(MIN(AP.plan_price), 2) AS 'faturamento_minimo',
FORMAT(MAX(AP.plan_price), 2) AS 'faturamento_maximo',
FORMAT(AVG(AP.plan_price), 2) AS 'faturamento_medio',
FORMAT(SUM(AP.plan_price), 2) AS 'faturamento_total'
FROM SpotifyClone.all_plans AS AP
INNER JOIN SpotifyClone.users AS U
ON U.plan_id = AP.plan_id; 
