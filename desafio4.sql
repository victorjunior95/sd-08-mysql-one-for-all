CREATE VIEW top_3_artistas AS
    SELECT 
        a.artista_nome AS artista,
        COUNT(ua.artista_id) AS seguidores
    FROM
        SpotifyClone.artistas AS a
            INNER JOIN
        SpotifyClone.usuario_artista AS ua ON a.artista_id = ua.artista_id
    GROUP BY ua.artista_id
    ORDER BY seguidores DESC , artista
    LIMIT 3;
