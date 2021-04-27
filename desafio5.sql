CREATE VIEW top_2_hits_do_momento AS
SELECT
c.cancao AS `cancao`,
COUNT(c.cancao) AS `reproducao`
FROM SpotifyClone.cancoes AS c
INNER JOIN SpotifyClone.historico_de_reproducao AS h
ON h.cancao_id = c.cancao_id
GROUP BY `cancao`
ORDER BY `reproducao` DESC, `cancao`
LIMIT 2;
