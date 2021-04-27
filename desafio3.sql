CREATE VIEW historico_reproducao_usuarios AS
  SELECT 
    u.nome_usuario AS `usuario`, m.nome_musica AS `nome`
  FROM SpotifyClone.HistoricoReproducoes AS h
  INNER JOIN SpotifyClone.Usuarios AS u
  ON h.usuario_id = u.usuario_id
  INNER JOIN SpotifyClone.Musicas AS m
  ON h.musica_id = m.musica_id
  ORDER BY `usuario`, `nome`;
