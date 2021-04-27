CREATE VIEW top_3_artistas AS
  SELECT
    a.artista AS 'artista',
    COUNT(sa.usuario_id) AS 'seguidores'
  FROM artista a
  INNER JOIN seguindo_artistas sa
  ON sa.artista_id = a.artista_id
  GROUP BY a.artista
  ORDER BY `seguidores` DESC, `artista`
  LIMIT 3;
