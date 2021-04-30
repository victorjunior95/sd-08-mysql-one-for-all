CREATE VIEW faturamento_atual AS
SELECT
CAST(MIN(c.`precos`) AS DECIMAL(10,2)) AS 'faturamento_minimo',
MAX(c.`precos`) AS 'faturamento_maximo',
CAST(ROUND(SUM(c.`precos`),2) / COUNT(c.`precos`) AS DECIMAL(10, 2)) AS 'faturamento_medio', 
ROUND(SUM(c.`precos`), 2) AS 'faturamento_total' 
FROM (
SELECT a.plano_id, b.plano_valor AS 'precos' 
FROM SpotifyClone.users a
INNER JOIN SpotifyClone.planos b ON a.plano_id = b.plano_id) AS c;
