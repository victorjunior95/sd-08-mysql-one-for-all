CREATE VIEW top_2_hits_do_momento AS 
SELECT c.nome_da_cancao AS cancao,
COUNT(hr.cancoes_id) AS reproducoes
FROM SpotifyClone.cancoes AS c
INNER JOIN SpotifyClone.Historico_reproducoes AS hr
ON c.cancoes_id = hr.cancoes_id
GROUP BY cancao
ORDER BY reproducoes DESC, cancao ASC
LIMIT 2;
