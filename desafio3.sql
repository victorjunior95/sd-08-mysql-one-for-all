CREATE VIEW historico_reproducao_usuarios AS
SELECT u.usuario_nome usuario, m.musica_nome 
FROM SpotifyClone.usuarios u, SpotifyClone.historico h, SpotifyClone.musicas m
WHERE 
u.usuario_id = h.usuario_id AND
m.musica_id = h.musica_id
ORDER BY `usuario`, `nome`;
