CREATE VIEW faturamento_atual AS
SELECT
MIN(plano.valores) AS 'faturamento_minimo',
MAX(plano.valores) AS 'faturamento_maximo',
ROUND(AVG(plano.valores), 2) AS 'faturamento_medio',
SUM(plano.valores) AS 'faturamento_total'
FROM SpotifyClone.Plano AS plano
INNER JOIN SpotifyClone.Usuario AS usuario
ON usuario.plano_id = plano.plano_id;
