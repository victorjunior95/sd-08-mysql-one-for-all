CREATE VIEW top_2_hits_do_momento AS
SELECT
s.song_name AS cancao,
COUNT(uh.song_id) AS reproducoes
FROM SpotifyClone.songs AS s
INNER JOIN SpotifyClone.user_history AS uh
WHERE s.song_id = uh.song_id
GROUP BY cancao
ORDER BY reproducoes DESC, cancao
LIMIT 2;
