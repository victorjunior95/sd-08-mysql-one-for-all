CREATE VIEW cancoes_premium AS 
SELECT
song.song_name AS nome,
COUNT(history.song_id) AS reproducoes
FROM SpotifyClone.Song AS song
INNER JOIN SpotifyClone.History AS history
ON song.song_id = history.song_id
INNER JOIN SpotifyClone.User AS user
ON user.user_id = history.user_id
WHERE user.service_id IN (2, 3)
GROUP BY `nome`
ORDER BY `nome`;
