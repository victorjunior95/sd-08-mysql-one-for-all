CREATE VIEW faturamento_atual AS
SELECT
MIN(P.valor) AS 'faturamento_minimo',
MAX(P.valor) AS 'faturamento_maximo',
ROUND(SUM(valor) / COUNT(U.usuario_id), 2) AS 'faturamento_medio',
SUM(P.valor) AS 'faturamento_total'
FROM SpotifyClone.Planos AS P
INNER JOIN SpotifyClone.Usuarios AS U
ON P.plano_id = U.plano_id;
