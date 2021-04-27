CREATE VIEW perfil_artistas AS
SELECT A.album_nome AS 'album', ART.artista_nome AS 'artista',COUNT(*) AS 'seguidores' FROM SpotifyClone.Artistas AS ART INNER JOIN SpotifyClone.Albums AS A ON ART.artista_id = A.artista_id INNER JOIN SpotifyClone.ArtistaSeguidores AS ASE ON A.artista_id = ASE.artista_id GROUP BY ASE.artista_id,A.album_id ORDER BY seguidores DESC, artista ASC, album ASC ;
