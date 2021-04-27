CREATE VIEW SpotifyClone.cancoes_premium AS
SELECT
  s.name AS nome,
  COUNT(sh.song_id) AS reproducoes
FROM songs AS s
INNER JOIN songs_history AS sh
ON s.song_id = sh.song_id
INNER JOIN users AS u
ON u.user_id = sh.user_id
WHERE EXISTS (
  SELECT * FROM plans AS p
  WHERE type IN('familiar', 'universitário')
  AND p.plan_id = u.user_id
)
GROUP BY nome
ORDER BY nome;
