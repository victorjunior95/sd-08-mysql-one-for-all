CREATE VIEW historico_reproducao_usuarios AS
SELECT u.usuario AS `usuario`, m.musica AS `nome`
FROM SpotifyClone.usuarios_musicas AS um
INNER JOIN SpotifyClone.usuarios AS u
ON um.usuario_id = u.usuario_id
INNER JOIN SpotifyClone.musicas AS m
ON um.musica_id = m.musica_id
ORDER BY `usuario`;
