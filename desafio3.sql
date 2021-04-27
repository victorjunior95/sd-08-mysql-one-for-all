USE SpotifyClone;
CREATE VIEW historico_reproducao_usuarios AS
  SELECT
  U.NAME AS 'usuario',
  S.NAME AS 'nome'
  FROM users AS U
  INNER JOIN user_history AS UH
  ON U.USER_ID = UH.USER_ID
  INNER JOIN songs AS S
  ON UH.SONG_ID = S.SONG_ID
  ORDER BY `usuario`, `nome`;
