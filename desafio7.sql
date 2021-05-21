CREATE VIEW perfil_artistas AS
    SELECT 
        ART.artista_nome AS artista,
        ALB.album_nome AS album,
        COUNT(*) AS seguidores
    FROM
        SpotifyClone.artista AS ART
            INNER JOIN
        SpotifyClone.album AS ALB ON ART.artista_id = ALB.artista_id
            INNER JOIN
        SpotifyClone.seguindo AS SEG ON ART.artista_id = SEG.artista_id
    GROUP BY artista , album
    ORDER BY seguidores DESC , artista , album;
