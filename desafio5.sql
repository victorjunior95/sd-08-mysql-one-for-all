CREATE VIEW top_2_hits_do_momento AS 
SELECT c.nome AS cancao, COUNT(h.cancao_id) AS reproducoes
FROM Cancoes as c
INNER JOIN Historico as h
ON c.cancao_id = h.cancao_id
GROUP BY (h.cancao_id)
ORDER BY reproducoes DESC, cancao
LIMIT 2;
