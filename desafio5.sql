CREATE VIEW top_2_hits_do_momento AS
  SELECT m.nome_musica AS `cancao`, COUNT(hr.usuario_id) AS reproducoes
  FROM SpotifyClone.HistoricoReproducoes AS hr
  INNER JOIN SpotifyClone.Musicas AS m
  ON hr.musica_id = m.musica_id
  GROUP BY `cancao`
  ORDER BY `reproducoes` DESC, `cancao`
  LIMIT 2;
