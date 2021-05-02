CREATE VIEW top_2_hits_do_momento AS
SELECT c.cancao_nome AS cancao,
  COUNT(uc.usuario_id) AS reproducoes
FROM SpotifyClone.cancoes AS c
  INNER JOIN SpotifyClone.usuario_cancao AS uc ON c.cancao_id = uc.cancao_id
GROUP BY uc.cancao_id
ORDER BY reproducoes DESC,
  cancao
LIMIT 2;
