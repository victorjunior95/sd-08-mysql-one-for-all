CREATE VIEW top_2_hits_do_momento AS
  SELECT
    C.cancao AS cancao
    COUNT(*) AS reproducoes
  FROM SpotifyClone.cancoes AS C
  INNER JOIN SpotifyClone.historicos_de_reproducoes AS HR
    ON HR.cancao_id = C.cancao_id
  GROUP BY cancao
  ORDER BY reproducoes DESC, cancao
  LIMIT 2;
