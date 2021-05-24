CREATE VIEW historico_reproducao_usuarios AS
  SELECT
    users.name AS usuario,
    songs.name AS nome
  FROM SpotifyClone.histories
  JOIN SpotifyClone.users ON users.user_id = histories.user_id
  JOIN SpotifyClone.songs ON songs.song_id = histories.song_id
  ORDER BY usuario, nome;
