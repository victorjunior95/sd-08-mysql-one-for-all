CREATE VIEW top_3_artistas AS
    SELECT 
        AR.artista_nome AS artista, COUNT(*) AS seguidores
    FROM
        SpotifyClone.seguindo AS SE
            INNER JOIN
        SpotifyClone.artista AS AR ON AR.artista_id = SE.artista_id
    GROUP BY artista
    ORDER BY seguidores DESC, artista
    LIMIT 3;
