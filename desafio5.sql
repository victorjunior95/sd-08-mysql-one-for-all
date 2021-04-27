CREATE VIEW top_2_hits_do_momento AS

SELECT
c.nome_cancao AS 'cancao',
COUNT(h.cancao_id) AS 'reproducoes'
FROM historico AS h
INNER JOIN cancoes AS c
ON c.cancao_id = h.cancao_id
GROUP BY c.nome_cancao
ORDER BY 2 DESC, 1
LIMIT 2;
