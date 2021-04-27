CREATE VIEW top_2_hits_do_momento AS
SELECT
c.nome_cancoes AS 'cancao',
COUNT(u.usuario_id) AS 'reproducoes'
FROM SpotifyClone.cancoes as c
INNER JOIN SpotifyClone.reproducoes as r
ON c.cancoes_id = r.cancoes_id
INNER JOIN SpotifyClone.usuario as u
ON u.usuario_id = r.usuario_id
GROUP BY c.cancoes_id
ORDER BY `reproducoes` DESC, `cancao`
LIMIT 2;
