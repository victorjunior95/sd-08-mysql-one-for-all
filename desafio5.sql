CREATE VIEW top_2_hits_do_momento AS
SELECT b.song_name AS 'cancao', COUNT(a.song_id) AS 'reproducoes' 
FROM SpotifyClone.historico_de_reproducoes a
INNER JOIN SpotifyClone.songs b ON a.song_id = b.song_id
GROUP BY a.song_id
ORDER BY `reproducoes` DESC, `cancao`
LIMIT 2;
