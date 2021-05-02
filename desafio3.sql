CREATE VIEW historico_reproducao_usuarios AS
  SELECT
    users.usuario AS usuario,
    songs.cancao AS nome
  FROM SpotifyClone.historic AS historic
    INNER JOIN SpotifyClone.users AS users
      ON historic.usuario_id = users.usuario_id
    INNER JOIN SpotifyClone.songs AS songs
      ON historic.cancao_id = songs.cancao_id
  ORDER BY `usuario`, `nome`;
