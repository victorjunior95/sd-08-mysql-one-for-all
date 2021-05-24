CREATE VIEW cancoes_premium AS
  SELECT
    C.cancao AS nome
    COUNT(*) AS reproducoes
  FROM SpotifyClone.cancoes AS C
  INNER JOIN SpotifyClone.historicos_de_reproducoes AS HR
    ON HR.cancao_id = C.cancao_id
    AND HR.usuario_id IN (2 , 3)
  GROUP BY nome
  ORDER BY nome
