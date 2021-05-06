CREATE VIEW cancoes_premium AS 
SELECT music_name AS nome, COUNT(*) AS reproducoes 
FROM SpotifyClone.music AS m
INNER JOIN SpotifyClone.reproduction_history AS h ON h.music_id = m.music_id
INNER JOIN SpotifyClone.user AS u ON u.user_id = h.user_id
INNER JOIN SpotifyClone.plan AS p ON p.plan_id = u.plan_id
WHERE p.plan_name IN ('familiar', 'universitário')
GROUP BY music_name
ORDER BY music_name;
