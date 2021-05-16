CREATE VIEW historico_reproducao_usuarios AS
SELECT 
u.usuario AS usuario,
c.cancao AS nome
FROM SpotifyClone.usuario_historico AS uh
INNER JOIN SpotifyClone.usuario AS u
ON uh.usuario_id = u.usuario_id
INNER JOIN SpotifyClone.cancao AS c
ON uh.cancao_id = c.cancao_id
ORDER BY `usuario`, `nome`;
