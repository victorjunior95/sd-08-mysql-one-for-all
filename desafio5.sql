CREATE VIEW top_2_hits_do_momento AS
SELECT m.music_name AS 'cancao', COUNT(*) AS 'reproducoes' 
FROM SpotifyClone.reproduction_history h
INNER JOIN SpotifyClone.music m ON h.music_id = m.music_id
GROUP BY h.music_id
ORDER BY `reproducoes` DESC, `cancao`
LIMIT 2;
