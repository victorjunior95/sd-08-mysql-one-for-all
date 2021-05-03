CREATE VIEW top_2_hits_do_momento AS 
SELECT
song.song_name AS cancao,
COUNT(history.song_id) AS reproducoes
FROM SpotifyClone.Song AS song
INNER JOIN SpotifyClone.History AS history
ON song.song_id = history.song_id
GROUP BY `cancao`
ORDER BY `reproducoes` DESC, `cancao`
LIMIT 2;
