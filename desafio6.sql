CREATE VIEW faturamento_atual AS
SELECT
FORMAT(MIN(tbP.plano_valor), 2) AS 'faturamento_minimo',
FORMAT(MAX(tbP.plano_valor), 2) AS 'faturamento_maximo',
FORMAT(AVG(tbP.plano_valor), 2) AS 'faturamento_medio',
FORMAT(SUM(tbP.plano_valor), 2) AS 'faturamento_total'
FROM SpotifyClone.plano AS tbP
INNER JOIN SpotifyClone.usuario AS tbU
ON tbP.plano_id = tbU.plano_id;

/* Retirado a solução com FORMAT desse link: https://www.w3schools.com/sql/func_sqlserver_format.asp */
