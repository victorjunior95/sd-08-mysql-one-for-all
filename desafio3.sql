CREATE VIEW historico_reproducao_usuarios AS
  SELECT
    u.nome,
    c.titulo
  FROM SpotifyClone.usuarios AS u
  INNER JOIN SpotifyClone.reproducoes AS r
  ON r.usuario_id = u.usuario_id
  INNER JOIN SpotifyClone.cancoes AS c
  ON c.cancao_id = r.cancao_id
  ORDER BY u.nome, c.titulo;
