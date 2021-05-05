CREATE VIEW historico_reproducao_usuarios AS
SELECT user_name AS 'usuario', music_name AS 'nome'
FROM SpotifyClone.reproduction_history AS H
INNER JOIN SpotifyClone.user AS U ON H.user_id = U.user_id
INNER JOIN SpotifyClone.music AS M ON H.music_id = M.music_id 
ORDER BY usuario, nome;
