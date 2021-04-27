CREATE VIEW historico_reproducao_usuarios AS
SELECT
u.nome_usuario AS 'usuario',
c.nome_cancoes AS 'nome'
FROM SpotifyClone.usuario as u
INNER JOIN SpotifyClone.reproducoes as r
ON u.usuario_id = r.usuario_id
INNER JOIN SpotifyClone.cancoes as c
ON r.cancoes_id = c.cancoes_id
ORDER BY `usuario`, `nome`;
