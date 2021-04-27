CREATE VIEW top_3_artistas AS
SELECT ART.artista_nome AS 'artista', COUNT(S.artista_id) AS 'seguidores' FROM SpotifyClone.Artistas AS ART INNER JOIN SpotifyClone.ArtistaSeguidores AS S ON ART.artista_id = S.artista_id GROUP BY ART.artista_nome ORDER BY `seguidores` DESC,`artista` LIMIT 3 ;
