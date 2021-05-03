CREATE VIEW perfil_artistas AS
SELECT ar.nome AS `artista`, al.nome AS `album`, COUNT(usa.usuario_id) AS `seguidores` FROM SpotifyClone.artistas AS ar
INNER JOIN SpotifyClone.albuns AS al ON al.artista_id = ar.artista_id
INNER JOIN SpotifyClone.usuario_seguindo_artista AS usa ON usa.artista_id = ar.artista_id
GROUP BY al.album_id
ORDER BY `seguidores` DESC, ar.nome;
