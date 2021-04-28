CREATE VIEW top_2_hits_do_momento AS
SELECT c.nome_cancao AS 'cancao', COUNT(h.usuario_id) AS 'reproducoes'
FROM SpotifyClone.cancoes AS c
INNER JOIN SpotifyClone.historico_reproducoes AS h
ON h.cancoes_id = c.cancoes_id
GROUP BY `cancao`
ORDER BY `reproducoes` DESC, `cancao`
LIMIT 2;
