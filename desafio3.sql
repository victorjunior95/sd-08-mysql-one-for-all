CREATE VIEW historico_reproducao_usuarios AS
  SELECT
    user AS usuario,
    song AS nome
  FROM SpotifyClone.users AS u
  INNER JOIN SpotifyClone.reproductions AS r ON u.user_id = r.user_id
  INNER JOIN SpotifyClone.songs AS s ON r.song_id = s.song_id
  ORDER BY usuario, nome;
