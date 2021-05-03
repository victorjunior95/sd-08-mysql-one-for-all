CREATE VIEW top_3_artistas AS
SELECT Art.Nome AS 'artista', COUNT(Seguindo.Usuario_id) AS `seguidores` FROM SpotifyClone.Artista AS Art
INNER JOIN SpotifyClone.Seguindo_Artista AS Seguindo ON Seguindo.Artista_id = Art.Artista_id
GROUP BY Art.Nome ORDER BY `seguidores` DESC, `artista` LIMIT 3;
