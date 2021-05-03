CREATE VIEW historico_reproducao_usuarios AS
SELECT u.usuario AS `usuario`, h.historico_de_reproducoes AS `nome`
FROM SpotifyClone.Usuarios AS u
INNER JOIN SpotifyClone.Historicos AS h
ON u.usuario_id = h.usuario_id
ORDER BY `usuario` ASC, `nome` ASC;
