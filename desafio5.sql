CREATE VIEW top_2_hits_do_momento AS
SELECT 
SGS.song_title AS 'cancao',
COUNT(HS.song_id) AS 'reproducoes'
FROM SpotifyClone.history_songs AS HS
INNER JOIN SpotifyClone.all_songs AS SGS
ON HS.song_id = SGS.song_id
GROUP BY HS.song_id
ORDER BY `reproducoes` DESC, `cancao`
LIMIT 2;
