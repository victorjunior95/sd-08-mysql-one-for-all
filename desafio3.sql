CREATE VIEW historico_reproducao_usuarios AS 
SELECT u.usuario_nome AS usuario, m.musica_nome AS nome FROM SpotifyClone.usuarios u
INNER JOIN SpotifyClone.reproducoes r
ON r.usuario_id = u.usuario_id
INNER JOIN SpotifyClone.musicas m
ON r.musica_id = m.musica_id
ORDER BY 1, 2;
