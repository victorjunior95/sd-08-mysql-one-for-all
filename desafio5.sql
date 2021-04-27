CREATE VIEW top_2_hits_do_momento AS
  SELECT
    c.titulo AS cancao,
    COUNT(*) AS reproducoes
  FROM SpotifyClone.cancoes AS c
  INNER JOIN SpotifyClone.reproducoes AS r
  ON c.cancao_id = r.cancao_id
  GROUP BY cancoes
  ORDER BY reproducoes DESC, cancoes LIMIT 2;

