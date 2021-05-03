CREATE VIEW historico_reproducao_usuarios AS 
SELECT u.nome AS `usuario`, m.nome AS `nome` FROM SpotifyClone.historico_reproducoes AS h
INNER JOIN SpotifyClone.usuarios AS u ON u.usuario_id = h.usuario_id
INNER JOIN  SpotifyClone.musicas AS m ON m.musica_id = h.musica_id
ORDER BY u.nome, m.nome;
