CREATE VIEW historico_reproducao_usuarios AS
SELECT
U.user_name AS 'usuario',
HS.played_song AS 'nome'
FROM SpotifyClone.users AS U
INNER JOIN SpotifyClone.history_songs AS HS
ON U.user_id = HS.user_id
ORDER BY `usuario`, `nome`;
