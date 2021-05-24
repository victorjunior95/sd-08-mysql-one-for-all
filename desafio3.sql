CREATE VIEW historico_reproducao_usuarios AS
SELECT
(SELECT usuario_nome FROM SpotifyClone.usuarios as usuario_1
WHERE  usuario_1.usuario_id = usuario_historico.usuario_id) AS usuario,
(SELECT musica_nome FROM SpotifyClone.musicas AS musicas_1
WHERE musicas_1.musica_id = usuario_historico.musica_id) AS nome
FROM SpotifyClone.reproducao_user AS usuario_historico
ORDER BY usuario, nome;
