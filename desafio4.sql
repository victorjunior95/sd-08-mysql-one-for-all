CREATE VIEW top_3_artistas AS
SELECT 
  a.nome AS 'artista',
  COUNT(ua.usuario_id) AS `seguidores`
FROM SpotifyClone.Artista AS a
INNER JOIN SpotifyClone.Usuario_Artista AS ua ON ua.artista_id = a.artista_id
GROUP BY a.nome
ORDER BY `seguidores` DESC, `artista`
LIMIT 3;
