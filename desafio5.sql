CREATE VIEW top_2_hits_do_momento AS
SELECT 
c.nome AS 'cancao',
COUNT(hr.cancao_id) AS 'reproducoes'
FROM cancoes AS c
INNER JOIN historico_de_reproducoes AS hr
ON hr.cancao_id = c.cancao_id
GROUP BY c.cancao_id
ORDER BY `reproducoes` DESC, `cancao` ASC
LIMIT 2;
