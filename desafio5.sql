CREATE OR REPLACE VIEW top_2_hits_do_momento AS
SELECT s.title AS `cancao`,
COUNT(rh.user_id) AS `reproducoes`
FROM SpotifyClone.songs AS s
INNER JOIN SpotifyClone.reproductions_history AS rh
ON rh.song_id = s.song_id
GROUP BY `cancao`
ORDER BY `reproducoes` DESC, `cancao`
LIMIT 2;

-- SELECT * FROM top_2_hits_do_momento; 
