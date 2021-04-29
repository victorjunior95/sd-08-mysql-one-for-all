CREATE VIEW historico_reproducao_usuarios AS
  SELECT 
    U.user AS usuario, S.song AS nome
  FROM SpotifyClone.users as U
  INNER JOIN SpotifyClone.history AS H ON U.user_id = H.user_id
  INNER JOIN SpotifyClone.songs AS S ON H.song_id = S.song_id
  ORDER BY usuario, nome;
