CREATE VIEW perfil_artistas AS
  SELECT
    a.artista AS 'artista',
    al.album AS 'album',
    COUNT(sa.usuario_id) AS 'seguidores'
  FROM artista a
  INNER JOIN album al
    ON al.artista_id = a.artista_id
  INNER JOIN seguindo_artistas sa
    ON sa.artista_id = a.artista_id
  GROUP BY a.artista, al.album
  ORDER BY `seguidores` DESC, `artista`, `album`;
