CREATE VIEW faturamento_atual AS
SELECT MIN(P.VALOR_PLANO) AS faturamento_minimo,
MAX(P.VALOR_PLANO) AS faturamento_maximo,
ROUND(SUM(P.VALOR_PLANO)/COUNT(U.USUARIO_ID), 2)AS faturamento_medio,
SUM(P.VALOR_PLANO) AS faturamento_total
FROM SpotifyClone.PLANOS AS P
INNER JOIN SpotifyClone.USUARIOS AS U ON P.PLANO_ID = U.PLANO_ID;
