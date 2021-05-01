CREATE VIEW historico_reproducao_usuarios AS
SELECT us.usuario_nome usuario, m.musica_nome nome
FROM SpotifyClone.usuarios us, SpotifyClone.historico h, SpotifyClone.musicas m
WHERE 
us.usuario_id = h.usuario_id AND
m.musica_id = h.musica_id
ORDER BY `usuario`, `nome`;
