CREATE VIEW cancoes_premium AS
  SELECT
  S.NAME AS 'nome',
  COUNT(UH.SONG_ID) AS 'reproducoes'
  FROM SpotifyClone.users AS U
  INNER JOIN user_history AS UH
  ON U.USER_ID = UH.USER_ID
  INNER JOIN songs AS S
  ON S.SONG_ID = UH.SONG_ID
  WHERE U.PLAN_ID IN(2, 3)
  GROUP BY S.SONG_ID
  ORDER BY `nome`;
