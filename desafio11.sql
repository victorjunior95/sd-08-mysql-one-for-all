CREATE VIEW cancoes_premium AS
SELECT 
c.nome_cancoes AS 'nome',
COUNT(r.cancoes_id) AS 'reproducoes'
FROM SpotifyClone.reproducoes AS r
INNER JOIN SpotifyClone.cancoes as c
ON r.cancoes_id = c.cancoes_id
INNER JOIN SpotifyClone.usuario AS u
ON u.usuario_id = r.usuario_id
INNER JOIN SpotifyClone.plano AS p
ON p.plano_id = u.plano_id
WHERE u.plano_id = 2 OR u.plano_id = 3
GROUP BY `nome`
ORDER BY `nome`;
