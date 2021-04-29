CREATE VIEW cancoes_premium AS 
  SELECT SONG.song AS `nome`, COUNT(SONG.song) AS `reproducoes` FROM SpotifyClone.User AS `USER`
  INNER JOIN SpotifyClone.Historic AS `HISTORIC`
  ON USER.user_id = HISTORIC.user_id
  INNER JOIN SpotifyClone.Song AS `SONG`
  ON HISTORIC.song_id = SONG.song_id
  WHERE USER.plan_id IN (2, 3)
  GROUP BY SONG.song, HISTORIC.user_id
  ORDER BY SONG.song;
