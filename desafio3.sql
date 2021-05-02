CREATE VIEW SpotifyClone.historico_reproducao_usuarios AS
SELECT usu.nome_usuario usuario, mus.nome_musica nome
FROM SpotifyClone.usuario usu
JOIN SpotifyClone.historico his ON his.usuario_id = usu.usuario_id
JOIN SpotifyClone.musica mus ON mus.musica_id = his.musica_id
ORDER BY usu.nome_usuario, mus.nome_musica;
