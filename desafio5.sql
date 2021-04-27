CREATE VIEW top_2_hits_do_momento AS
SELECT song_name AS cancao,
COUNT(h.song_id) AS reproducoes
FROM SpotifyClone.Songs AS s
INNER JOIN SpotifyClone.History AS h
ON s.song_id = h.song_id
GROUP BY cancao
ORDER BY reproducoes DESC, cancao ASC
LIMIT 2;
