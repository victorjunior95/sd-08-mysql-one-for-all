CREATE VIEW top_2_hits_do_momento AS
SELECT cancao.cancao,
COUNT(*) AS reproducoes
FROM SpotifyClone.cancoes cancao
INNER JOIN SpotifyClone.historico_de_reproducoes hreproducao
ON hreproducao.cancao_id = cancao.cancao_id
GROUP BY cancao.cancao
ORDER BY COUNT(*) DESC, cancao.cancao
LIMIT 2;
