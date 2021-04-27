CREATE VIEW top_2_hits_do_momento AS
SELECT
  S.song_name AS cancao,
  COUNT(LH.user_id) AS reproducoes
FROM SpotifyClone.listening_history AS LH
INNER JOIN SpotifyClone.users AS U
  ON LH.user_id = U.user_id
INNER JOIN SpotifyClone.songs AS S
  ON LH.song_id = S.song_id
GROUP BY S.song_id
ORDER BY 2 DESC, 1
LIMIT 2;
