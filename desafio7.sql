CREATE VIEW perfil_artistas AS
  SELECT 
    art.nome_artista AS `artista`,
    alb.nome_album AS `album`,
    COUNT(ls.artista_id) AS `seguidores`
  FROM SpotifyClone.Artistas AS art
  INNER JOIN SpotifyClone.Albuns AS alb
  ON art.artista_id = alb.artista_id
  INNER JOIN SpotifyClone.ListaSeguidores AS ls
  ON art.artista_id = ls.artista_id
  GROUP BY alb.nome_album, art.nome_artista # https://pt.stackoverflow.com/questions/164614/mysql-retornando-erro-de-group-by-ap%C3%B3s-atualiza%C3%A7%C3%A3o-para-vers%C3%A3o-5-7/164618
  ORDER BY `seguidores` DESC, `artista`, `album`;
