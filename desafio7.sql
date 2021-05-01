CREATE VIEW perfil_artistas AS
    SELECT 
        a.nome AS artista,
        al.nome AS album,
        COUNT(s.artista_id) AS seguidores
    FROM
        SpotifyClone.artistas AS a
            INNER JOIN
        SpotifyClone.albuns AS al ON al.artista_id = a.id
            INNER JOIN
        SpotifyClone.seguidores AS s ON s.artista_id = a.id
    GROUP BY artista , album
    ORDER BY seguidores DESC , artista , album;

-- SELECT * FROM perfil_artistas;
