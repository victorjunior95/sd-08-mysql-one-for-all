CREATE VIEW cancoes_premium AS
SELECT
  S.song_name AS nome,
  COUNT(LH.user_id) AS reproducoes
FROM SpotifyClone.songs AS S
INNER JOIN SpotifyClone.listening_history AS LH
  ON S.song_id = LH.song_id
INNER JOIN SpotifyClone.users AS U
  ON LH.user_id = U.user_id
INNER JOIN SpotifyClone.plans AS P
  ON U.plan_id = P.plan_id
WHERE P.plan_name <> 'gratuito'
GROUP BY nome
ORDER BY nome ASC;
