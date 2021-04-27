USE SpotifyClone;
CREATE VIEW historico_reproducao_usuarios AS
(SELECT u.nome as `usuario`, c.nome as `nome`
FROM Usuarios AS u
INNER JOIN Historico as h
ON u.usuario_id = h.usuario_id
INNER JOIN Cancoes as c
ON c.cancao_id = h.cancao_id
ORDER BY usuario, nome);
