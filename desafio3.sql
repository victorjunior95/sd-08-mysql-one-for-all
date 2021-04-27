USE spotifyclone;

CREATE VIEW historico_reproducao_usuarios AS
  SELECT 
    u.nome_usuario AS `usuario`, m.nome_musica AS `nome`
  FROM historicoreproducoes AS h
  INNER JOIN usuarios AS u
  ON h.usuario_id = u.usuario_id
  INNER JOIN musicas AS m
  ON h.musica_id = m.musica_id
  ORDER BY `usuario`, `nome`;
