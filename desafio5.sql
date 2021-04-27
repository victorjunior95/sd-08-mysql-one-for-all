USE SpotifyClone;

CREATE VIEW top_2_hits_do_momento AS
  SELECT
  S.NAME AS 'cancao',
  COUNT(UH.SONG_ID) AS 'reproducoes'
  FROM user_history AS UH
  INNER JOIN songs AS S
  ON UH.SONG_ID = S.SONG_ID
  GROUP BY UH.SONG_ID
  ORDER BY `reproducoes` DESC, `cancao`
  LIMIT 2;
