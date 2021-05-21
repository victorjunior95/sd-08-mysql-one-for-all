CREATE VIEW top_2_hits_do_momento AS
SELECT c.titulo AS cancao, COUNT(hr.cancoes_id) AS reproducoes
FROM SpotifyClone.historico_de_reproducoes AS hr
INNER JOIN cancoes c ON c.cancoes_id = hr.cancoes_id
GROUP BY hr.cancoes_id
ORDER BY 2 DESC, 1
LIMIT 2;
