CREATE VIEW historico_reproducao_usuarios AS
SELECT
u.nome AS `usuario`,
c.nome_cancao AS `nome`
FROM SpotifyClone.historico_de_reproducoes AS hp
INNER JOIN SpotifyClone.usuario AS u
ON hp.usuario_id = u.usuario_id
INNER JOIN SpotifyClone.cancoes AS c
ON hp.cancao_id = c.cancao_id
ORDER BY `usuario`, `nome`;
