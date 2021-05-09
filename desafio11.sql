CREATE VIEW `cancoes_premium` AS
SELECT
c.cancao_titulo AS `nome`,
COUNT(h.cancao_id) AS `reproducoes`
FROM SpotifyClone.historico AS `h`
INNER JOIN SpotifyClone.cancoes AS `c`
ON c.cancao_id = h.cancao_id
INNER JOIN SpotifyClone.usuarios AS `u`
ON u.usuario_id = h.usuario_id
INNER JOIN SpotifyClone.planos AS `p`
ON p.plano_id = u.plano_id
WHERE p.plano_id IN (2, 3)
GROUP BY c.cancao_titulo
ORDER BY `nome`;
