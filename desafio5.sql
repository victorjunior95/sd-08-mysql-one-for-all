CREATE VIEW top_2_hits_do_momento AS
SELECT
c.nome_cancao AS `cancao`,
COUNT(hp.cancao_id) AS `reproducoes`
FROM SpotifyClone.historico_de_reproducoes AS hp
INNER JOIN SpotifyClone.cancoes AS c
ON hp.cancao_id = c .cancao_id
GROUP BY `cancao`
ORDER BY `reproducoes` DESC, `cancao`
LIMIT 2;
