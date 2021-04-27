CREATE VIEW top_3_artistas AS 
  SELECT a.nome_artista AS `artista`, COUNT(ls.usuario_id) AS `seguidores` 
  FROM SpotifyClone.ListaSeguidores AS ls
  INNER JOIN SpotifyClone.Artistas AS a
  ON ls.artista_id = a.artista_id
  GROUP BY a.nome_artista
  ORDER BY `seguidores` DESC, `artista`
  LIMIT 3;
