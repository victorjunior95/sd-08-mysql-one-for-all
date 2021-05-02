USE SpotifyClone;
CREATE VIEW top_2_hits_do_momento AS
SELECT c.cancao AS cancao, COUNT(*) AS reproducoes
FROM historico_de_reproducoes h
INNER JOIN cancoes c ON h.cancao_id = c.cancao_id
GROUP BY cancao
ORDER BY reproducoes DESC, cancao ASC
LIMIT 2;