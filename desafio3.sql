CREATE VIEW historico_reproducao_usuarios AS
  SELECT u.nome AS 'usuario',
  c.cancao AS 'nome'
  FROM SpotifyClone.Usuario AS u
  INNER JOIN SpotifyClone.Usuario_Cancao AS uc ON uc.usuario_id = u.usuario_id
  INNER JOIN SpotifyClone.Cancao AS c ON c.cancao_id = uc.cancaO_id
  ORDER BY `usuario`, `nome`;
