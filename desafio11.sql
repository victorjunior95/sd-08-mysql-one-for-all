CREATE VIEW cancoes_premium AS 
SELECT c.nome_da_cancao AS nome,
COUNT(hr.cancoes_id) AS reproducoes
FROM SpotifyClone.cancoes AS c
INNER JOIN SpotifyClone.Historico_reproducoes AS hr
ON hr.cancoes_id = c.cancoes_id
INNER JOIN Usuario AS u
ON u.usuario_id = hr.usuario_id
WHERE plano_id IN (2, 3)
GROUP BY nome
ORDER BY nome ASC;
