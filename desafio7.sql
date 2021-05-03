CREATE VIEW perfil_artistas AS
SELECT Art.Nome AS 'artista',
Album.album AS 'album', COUNT(Seguindo.Usuario_id) AS 'seguidores' FROM Artista Art
INNER JOIN Album ON Album.Artista_id = Art.Artista_id
INNER JOIN Seguindo_Artista Seguindo ON Seguindo.Artista_id = Art.Artista_id
GROUP BY Art.Nome, Album.Album ORDER BY `seguidores` DESC, `artista`, `album`;
