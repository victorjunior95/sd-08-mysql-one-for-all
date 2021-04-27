CREATE VIEW historico_reproducao_usuarios AS
SELECT u.nome_usuario AS 'usuario', c.nome_cancao AS 'nome'
FROM SpotifyClone.usuario AS u
INNER JOIN SpotifyClone.historico_reproducoes AS h
ON h.usuario_id = u.usuario_id
INNER JOIN SpotifyClone.cancoes AS c
ON h.cancoes_id = c.cancoes_id
ORDER BY `usuario`, `nome`;
