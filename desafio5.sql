CREATE VIEW top_2_hits_do_momento AS
SELECT canc.nome AS cancao,
COUNT(hrepr.cancao_id) AS reproducoes
FROM SpotifyClone.cancoes AS canc
INNER JOIN SpotifyClone.historico_reproducoes AS hrepr ON hrepr.cancao_id = canc.cancao_id
GROUP BY canc.nome
ORDER BY reproducoes DESC, cancao
LIMIT 2;
