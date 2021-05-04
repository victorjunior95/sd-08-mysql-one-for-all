CREATE VIEW top_2_hits_do_momento AS
SELECT c.cancao, COUNT(*) AS `reproducoes`
FROM SpotifyClone.Historicos AS h
INNER JOIN SpotifyClone.Cancoes AS c
ON c.cancao_id = h.cancao_id
GROUP BY `cancao`
ORDER BY `reproducoes` DESC, `cancao` ASC
LIMIT 2;
