CREATE VIEW cancoes_premium AS
SELECT
  S.title AS 'nome',
  COUNT(*) AS 'reproducoes'
FROM SpotifyClone.playback_history AS PH
INNER JOIN SpotifyClone.user AS U
ON PH.user_id = U.user_id
INNER JOIN SpotifyClone.plan AS P
ON U.plan_id = P.plan_id
INNER JOIN SpotifyClone.song AS S
ON PH.song_id = S.song_id
WHERE P.type IN ('familiar', 'universitario')
GROUP BY S.title
ORDER BY S.title;
