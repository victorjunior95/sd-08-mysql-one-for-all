CREATE VIEW cancoes_premium AS
SELECT
c.cancao AS `nome`,
COUNT(u.usuario_id) AS `reproducoes`
FROM SpotifyClone.cancoes AS c
INNER JOIN SpotifyClone.historico_de_reproducao AS h
ON c.cancao_id = h.cancao_id
INNER JOIN SpotifyClone.usuario AS u
ON h.usuario_id = u.usuario_id
WHERE u.plano_id IN (2, 3)
GROUP BY c.cancao_id
ORDER BY `nome`;
