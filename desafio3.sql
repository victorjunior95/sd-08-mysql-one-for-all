CREATE VIEW historico_reproducao_usuarios AS
SELECT usuario, cancao AS `nome`
FROM SpotifyClone.Usuarios AS u
INNER JOIN SpotifyClone.Historicos AS h ON u.usuario_id = h.usuario_id
INNER JOIN SpotifyClone.Cancoes AS c ON c.cancao_id = h.cancao_id
ORDER BY `usuario` ASC, `nome` ASC;
