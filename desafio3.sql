CREATE VIEW `historico_reproducao_usuarios` AS
SELECT
u.usuario_nome AS `usuario`,
c.cancao_titulo AS `nome`
FROM SpotifyClone.historico AS `h`
INNER JOIN SpotifyClone.usuarios AS `u`
ON h.usuario_id = u.usuario_id
INNER JOIN SpotifyClone.cancoes AS `c`
ON h.cancao_id = c.cancao_id
ORDER BY `usuario`, `nome`;
