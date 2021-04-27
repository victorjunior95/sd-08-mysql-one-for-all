CREATE VIEW SpotifyClone.top_2_hits_do_momento AS
SELECT
  s.name AS cancao,
  COUNT(sh.user_id) AS reproducoes
FROM songs AS s
INNER JOIN songs_history AS sh
ON s.song_id = sh.song_id
GROUP BY cancao
ORDER BY reproducoes DESC, cancao
LIMIT 2;
