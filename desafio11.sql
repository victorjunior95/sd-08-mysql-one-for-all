CREATE VIEW cancoes_premium AS
SELECT
m.music AS nome,
COUNT(DISTINCT hv.music_id) AS reproducoes
FROM
SpotifyClone.music AS m
INNER JOIN SpotifyClone.hist_views AS hv
ON m.music_id = hv.music_id
INNER JOIN SpotifyClone.user AS u
ON u.user_id = hv.user_id
INNER JOIN SpotifyClone.plan as p
ON p.plan_id = u.plan_id
WHERE p.plan IN ('universitário', 'familiar')
GROUP BY nome
ORDER BY nome;
