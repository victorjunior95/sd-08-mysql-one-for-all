CREATE VIEW SpotifyClone.historico_reproducao_usuarios AS
SELECT u.usuario AS usuario, m.cancoes AS nome FROM SpotifyClone._usuarios AS u
INNER JOIN SpotifyClone._historico AS h ON  u.usuario_id = h.usuario_id
INNER JOIN SpotifyClone._musicas AS m ON m.cancoes_id = h.cancoes_id
ORDER BY usuario, nome;
