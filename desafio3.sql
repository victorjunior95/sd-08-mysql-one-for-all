CREATE VIEW historico_reproducao_usuarios AS
SELECT Nome as 'usuario', musicaNome as 'nome' FROM SpotifyClone.Historico AS H
INNER JOIN Musicas AS M ON H.musica_id = M.musica_id
INNER JOIN Usuarios AS U ON H.usuario_id = U.usuario_id
ORDER by Nome, musicaNome;
