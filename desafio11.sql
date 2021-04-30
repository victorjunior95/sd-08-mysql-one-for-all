CREATE VIEW cancoes_premium AS
SELECT 
c.nome AS 'nome',
COUNT(hr.cancao_id) AS 'reproducoes'
FROM SpotifyClone.cancoes AS c
INNER JOIN SpotifyClone.historico_de_reproducoes AS hr
ON hr.cancao_id = c.cancao_id
GROUP BY c.nome
ORDER BY `nome` ASC;
