CREATE VIEW top_3_artistas AS
    SELECT 
        a.artista_nome AS artista,
        COUNT(us.artista_id) AS seguidores
    FROM
        SpotifyClone.usariosSeguidores us
            INNER JOIN
        SpotifyClone.artistas a ON a.artista_id = us.artista_id
    GROUP BY a.artista_nome
    ORDER BY seguidores DESC , a.artista_nome
    LIMIT 3;
