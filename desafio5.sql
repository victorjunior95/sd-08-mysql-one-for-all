CREATE VIEW top_2_hits_do_momento AS
SELECT 
  S.title AS 'cancao',
  COUNT(*) AS 'reproducoes'
FROM SpotifyClone.playback_history AS PH
INNER JOIN SpotifyClone.song AS S
ON PH.song_id = S.song_id
GROUP BY PH.song_id
ORDER BY `reproducoes` desc, `cancao`
LIMIT 2;
