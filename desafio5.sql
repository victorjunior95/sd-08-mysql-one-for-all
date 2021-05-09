CREATE VIEW `top_2_hits_do_momento` AS
SELECT
c.cancao_titulo AS `cancao`,
COUNT(h.cancao_id) AS `reproducoes`
FROM SpotifyClone.cancoes AS `c`
INNER JOIN SpotifyClone.historico AS `h`
ON c.cancao_id = h.cancao_id
GROUP BY `cancao`
ORDER BY `reproducoes` DESC, `cancao`
LIMIT 2;
