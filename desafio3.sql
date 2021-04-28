CREATE VIEW historico_reproducao_usuarios AS
  SELECT User AS `usuario`, SONG.song AS `nome`
  FROM SpotifyClone.User AS `USER`
  INNER JOIN SpotifyClone.Historic AS `HISTORIC`
  ON USER.user_id = HISTORIC.user_id
  INNER JOIN SpotifyClone.Song AS `SONG`
  ON HISTORIC.song_id = SONG.song_id
  ORDER BY User, SONG.song;
