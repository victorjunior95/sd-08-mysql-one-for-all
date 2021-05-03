CREATE VIEW top_2_hits_do_momento AS
SELECT s.name AS cancao, count(h.song_id) AS reproducoes
FROM SpotifyClone.songs AS s
INNER JOIN SpotifyClone.histories AS h ON s.id = h.song_id
GROUP BY s.name
ORDER BY count(h.song_id) DESC, s.name
LIMIT 2;
