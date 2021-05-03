CREATE VIEW SpotifyClone.faturamento_atual AS
SELECT ROUND(MIN(P.plano_valor), 2) AS faturamento_minimo,
ROUND(MAX(P.plano_valor), 2) AS faturamento_maximo,
ROUND(AVG(P.plano_valor), 2) AS faturamento_medio,
ROUND(SUM(P.plano_valor), 2) AS faturamento_total
FROM SpotifyClone.usuarios AS U
INNER JOIN SpotifyClone.planos AS P
ON U.plano_id = P.plano_id;
