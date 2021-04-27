CREATE VIEW cancoes_premium AS 
SELECT song_name AS nome,
COUNT(h.song_id) AS reproducoes
FROM SpotifyClone.Songs AS s
INNER JOIN SpotifyClone.History AS h
ON s.song_id = h.song_id
INNER JOIN SpotifyClone.Spotify_User AS u
ON h.user_id = u.user_id
WHERE subscription_id IN (2, 3)
GROUP BY nome
ORDER BY nome;
