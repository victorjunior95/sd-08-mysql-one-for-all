CREATE VIEW top_2_hits_do_momento AS
  SELECT
    songs.name AS cancao,
    COUNT(histories.song_id) AS reproducoes
  FROM SpotifyClone.histories
  JOIN SpotifyClone.songs ON songs.song_id = histories.song_id
  GROUP BY histories.song_id
  ORDER BY reproducoes DESC, cancao
  LIMIT 2;
