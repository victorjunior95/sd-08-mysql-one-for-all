CREATE VIEW top_3_artistas AS
    SELECT 
        a.nome AS artista, COUNT(*) AS seguidores
    FROM
        SpotifyClone.artistas AS a
            INNER JOIN
        SpotifyClone.seguidores AS s ON s.artista_id = a.id
    GROUP BY artista
    ORDER BY seguidores DESC , artista
    LIMIT 3;

-- SELECT * FROM top_3_artistas;
