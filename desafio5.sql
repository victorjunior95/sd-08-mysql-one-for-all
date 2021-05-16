CREATE VIEW top_2_hits_do_momento AS
SELECT 
c.cancao AS cancao,
COUNT(h.usuario_id) AS reproducoes
FROM SpotifyClone.usuario_historico AS h
INNER JOIN SpotifyClone.cancao AS c
ON h.cancao_id = c.cancao_id
GROUP BY `cancao`
ORDER BY `reproducoes` DESC, `cancao`
LIMIT 2;
