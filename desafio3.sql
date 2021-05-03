CREATE VIEW SpotifyClone.historico_reproducao_usuarios AS
SELECT U.usuario_nome AS usuario, M.musica_nome AS nome
FROM SpotifyClone.historico AS H
INNER JOIN SpotifyClone.usuarios AS U
ON H.usuario_id = U.usuario_id
INNER JOIN SpotifyClone.musicas AS M
ON H.musica_id = M.musica_id
ORDER BY usuario, nome;
