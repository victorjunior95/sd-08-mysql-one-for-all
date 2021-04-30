CREATE VIEW historico_reproducao_usuarios AS
SELECT nome_usuario AS 'usuario', nome_musica AS 'nome'
FROM SpotifyClone.historico_reproducoes AS H
INNER JOIN SpotifyClone.usuario AS U ON H.usuario_ID = U.usuario_ID
INNER JOIN SpotifyClone.musica AS M ON H.musica_ID = M.musica_ID 
ORDER BY U.nome_usuario, M.nome_musica;
