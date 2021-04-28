CREATE VIEW top_2_hits_do_momento AS 
  SELECT SONG.song AS `cancao`, COUNT(HISTORIC.song_id) AS `reproducoes`
  FROM SpotifyClone.Song AS `SONG`
  INNER JOIN SpotifyClone.Historic AS `HISTORIC`
  ON SONG.song_id = HISTORIC.song_id
  GROUP BY song
  ORDER BY COUNT(HISTORIC.song_id) DESC, SONG.song
  LIMIT 2;
