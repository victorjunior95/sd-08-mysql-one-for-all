CREATE VIEW `historico_reproducao_usuarios` AS
SELECT
u.usuario_name AS `usuario`,
c.titulo_cancao AS `nome`
FROM SpotifyClone.historico AS `h`
INNER JOIN SpotifyClone.usuarios AS `u`
ON h.usuario_id = u.usuario_id
INNER JOIN SpotifyClone.cancoes AS `c`
ON h.id_cancao = c.id_cancao
ORDER BY `usuario`, `nome`;
