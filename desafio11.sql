CREATE VIEW cancoes_premium AS
SELECT
HS.played_song AS 'nome',
COUNT(HS.user_id) AS 'reproducoes'
FROM SpotifyClone.history_songs AS HS
INNER JOIN SpotifyClone.users AS U
ON HS.user_id = U.user_id
INNER JOIN SpotifyClone.all_plans AS AP
ON AP.plan_id = U.plan_id
WHERE AP.plan_title = 'familiar' OR AP.plan_title = 'universitário'
GROUP BY HS.played_song, HS.user_id
ORDER BY `nome`;
