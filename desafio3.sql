CREATE VIEW historico_reproducao_usuarios AS
SELECT U.Nome  AS 'usuario', M.musicaNome AS 'nome' FROM SpotifyClone.Historico AS H
INNER JOIN SpotifyClone.Musicas AS M
ON M.musica_id = H.musica_id
INNER JOIN SpotifyClone.Usuarios AS U
ON U.usuario_id = H.usuario_id
ORDER BY usuario, nome;
