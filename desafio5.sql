CREATE VIEW SpotifyClone.top_2_hits_do_momento AS
SELECT m.cancoes AS cancao, COUNT(h.cancoes_id) AS reproducoes
FROM SpotifyClone._musicas AS m
INNER JOIN SpotifyClone._historico AS h ON h.cancoes_id = m.cancoes_id
GROUP BY cancao
ORDER BY reproducoes DESC, cancao LIMIT 2;
