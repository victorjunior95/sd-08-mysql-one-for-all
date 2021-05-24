CREATE VIEW faturamento_atual AS
  SELECT
    ROUND(MIN(P.preco), 2) AS faturamento_minimo,
    ROUND(MAX(P.preco), 2) AS faturamento_maximo,
    ROUND(AVG(P.preco), 2) AS faturamento_medio,
    ROUND(SUM(P.preco), 2) AS faturamento_total
  FROM SpotifyClone.planos AS P
  INNER JOIN SpotifyClone.usuarios AS U
    ON P.plano_id = U.plano_id;
