CREATE VIEW historico_reproducao_usuarios AS
SELECT U.usuario_nome AS 'usuario', M.musica_nome AS 'nome' FROM SpotifyClone.Usuario AS U INNER JOIN SpotifyClone.Historico AS H ON U.usuario_id = H.usuario_id INNER JOIN SpotifyClone.Musicas AS M ON H.musica_id = M.musica_id ORDER BY U.usuario_nome,M.musica_nome;
