CREATE VIEW perfil_artistas AS
    SELECT 
        artista, album, COUNT(user_id) seguidores
    FROM
        SpotifyClone.Seguindo s
            INNER JOIN
        SpotifyClone.Artista a ON s.artista_id = a.artista_id
            INNER JOIN
        SpotifyClone.Album al ON al.artista_id = a.artista_id
    GROUP BY artista , album
    ORDER BY seguidores DESC , artista;
