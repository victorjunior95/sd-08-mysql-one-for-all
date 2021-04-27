CREATE VIEW cancoes_premium AS
  SELECT 
  m.nome_musica AS `nome`,
  COUNT(hr.musica_id) AS `reproducoes`
  FROM SpotifyClone.HistoricoReproducoes AS hr
  INNER JOIN SpotifyClone.Musicas AS m
  ON hr.musica_id = m.musica_id
  GROUP BY m.nome_musica
  ORDER BY `nome`;
