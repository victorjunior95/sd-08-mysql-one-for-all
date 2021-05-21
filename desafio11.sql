CREATE VIEW cancoes_premium AS
SELECT
s.song_name AS nome,
COUNT(uh.song_id) AS reproducoes
FROM SpotifyClone.songs AS s 
INNER JOIN SpotifyClone.user_history AS uh
ON s.song_id = uh.song_id
WHERE user_id IN (SELECT user_id
FROM SpotifyClone.users
WHERE plan_id IN (2, 3))
GROUP BY nome
ORDER BY nome;
