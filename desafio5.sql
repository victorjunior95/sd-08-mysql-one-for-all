CREATE VIEW top_2_hits_do_momento AS
  SELECT
    song AS cancao,
    count(song) AS reproducoes
  FROM SpotifyClone.songs AS s
  INNER JOIN SpotifyClone.reproductions AS r ON r.song_id = s.song_id
  GROUP BY song
  ORDER BY reproducoes DESC, cancao
  LIMIT 2;
