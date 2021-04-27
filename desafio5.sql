USE SpotifyClone;

CREATE VIEW top_2_hits_do_momento AS
SELECT cancao, COUNT(*) AS reproducoes
FROM SpotifyClone.historico_de_reproducoes AS hdr
INNER JOIN SpotifyClone.cancao AS c
ON hdr.cancao_id = c.cancao_id
GROUP BY hdr.cancao_id
ORDER BY reproducoes DESC, cancao
LIMIT 2;
