CREATE VIEW cancoes_premium AS
SELECT s.song AS nome, COUNT(p.song_id) AS reproducoes
FROM SpotifyClone.Songs AS s
INNER JOIN SpotifyClone.Playback_history AS p ON s.song_id = p.song_id
INNER JOIN SpotifyClone.Users AS u ON p.user_id = u.user_id
INNER JOIN SpotifyClone.Plans AS pl ON u.plan_id = pl.plan_id
WHERE pl.plan IN('familiar', 'universitario') 
GROUP BY nome
ORDER BY nome;
