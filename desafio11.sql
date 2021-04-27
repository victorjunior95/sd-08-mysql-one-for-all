CREATE VIEW cancoes_premium AS
  SELECT 
    m.nome_musica AS `nome`,
    COUNT(hr.musica_id) AS `reproducoes`
  FROM SpotifyClone.HistoricoReproducoes AS hr
  INNER JOIN SpotifyClone.Musicas AS m
  ON hr.musica_id = m.musica_id
  INNER JOIN SpotifyClone.Usuarios AS u
  ON hr.usuario_id = u.usuario_id
  INNER JOIN SpotifyClone.Planos AS p
  ON u.plano_id = p.plano_id
  WHERE p.nome_plano IN ('familiar', 'universitario')
  GROUP BY m.nome_musica
  ORDER BY `nome`;
