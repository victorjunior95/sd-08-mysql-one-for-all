CREATE VIEW historico_reproducao_usuarios AS 
SELECT
user.user_name AS usuario,
song.song_name AS nome
FROM SpotifyClone.User AS user
INNER JOIN SpotifyClone.History AS history
ON user.user_id = history.user_id
INNER JOIN SpotifyClone.Song AS song
ON history.song_id = song.song_id
ORDER BY `usuario`, `nome`;
