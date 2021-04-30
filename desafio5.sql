CREATE VIEW top_2_hits_do_momento AS
SELECT sc.cancao AS 'cancao',
COUNT(shr.cancao_id) AS 'reproducoes'
FROM SpotifyClone.cancoes AS sc
INNER JOIN SpotifyClone.historico_de_reproducoes AS shr
ON shr.cancao_id = sc.cancao_id
GROUP BY sc.cancao_id
ORDER BY `reproducoes` DESC, `cancao` ASC
LIMIT 2;
