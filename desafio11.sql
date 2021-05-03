CREATE VIEW cancoes_premium AS
  SELECT
    songs.cancao AS nome,
    COUNT(historic.cancao_id) AS reproducoes
  FROM SpotifyClone.songs AS songs
  INNER JOIN SpotifyClone.historic AS historic
    ON songs.cancao_id = historic.cancao_id
  INNER JOIN
    (SELECT usuario_id
    FROM SpotifyClone.users
    WHERE plano_id <> 1) AS users
  ON historic.usuario_id = users.usuario_id
  GROUP BY nome
  ORDER BY nome;
