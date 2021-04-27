CREATE VIEW top_3_artistas AS
    SELECT 
        artista, COUNT(user_id) seguidores
    FROM
        SpotifyClone.Seguindo s
            INNER JOIN
        SpotifyClone.Artista a ON s.artista_id = a.artista_id
    GROUP BY artista
    ORDER BY seguidores DESC , artista
    LIMIT 3;