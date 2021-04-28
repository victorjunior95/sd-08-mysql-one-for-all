CREATE VIEW faturamento_atual AS
# https://www.w3schools.com/mysql/func_mysql_format.asp
SELECT FORMAT(MIN(valor_plano), 2) AS 'faturamento_minimo',
FORMAT(MAX(p.valor_plano), 2) AS 'faturamento_maximo',
FORMAT(AVG(p.valor_plano), 2) AS 'faturamento_medio',
FORMAT(SUM(p.valor_plano), 2) AS 'faturamento_total'
FROM SpotifyClone.Plano AS p
INNER JOIN SpotifyClone.Usuario AS u ON u.plano_id = p.plano_id;

