CREATE VIEW top_2_hits_do_momento AS
  SELECT
    songs.cancao AS cancao,
    COUNT(historic.cancao_id) AS reproducoes
    FROM SpotifyClone.songs AS songs
    INNER JOIN SpotifyClone.historic AS historic
      ON songs.cancao_id = historic.cancao_id
  GROUP BY cancao
  ORDER BY reproducoes DESC, cancao ASC
  LIMIT 2;
