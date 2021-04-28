CREATE VIEW top_2_hits_do_momento AS
SELECT s.song_title AS cancao,
COUNT(u.user_id) AS reproducoes
FROM SpotifyClone.songs AS s
INNER JOIN SpotifyClone.users AS u
INNER JOIN SpotifyClone.historic AS h
ON s.song_id = h.song_id AND u.user_id = h.user_id
GROUP BY cancao
ORDER BY COUNT(u.user_id) DESC, cancao
LIMIT 2;
