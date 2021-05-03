CREATE VIEW historico_reproducao_usuarios AS
SELECT
usuario.usuario_name AS `usuario`,
cancoes.titulo_cancao AS `nome`
FROM SpotifyClone.HistoricoDeReproducoes AS historico
INNER JOIN SpotifyClone.Usuarios AS usuario
ON historico.usuario_id = usuario.usuario_id
INNER JOIN SpotifyClone.Cancoes AS cancoes
ON historico.id_cancao = cancoes.id_cancao
ORDER BY `usuario`, `nome`;
