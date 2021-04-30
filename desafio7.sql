CREATE VIEW perfil_artistas AS
    SELECT 
        (SELECT 
                art.artiste_name
            FROM
                SpotifyClone.artiste AS art
            WHERE
                art.artiste_id = alb.artiste_id) AS artista,
        alb.album_name AS album,
        (SELECT 
                COUNT(*)
            FROM
                SpotifyClone.artiste_user AS a_u
            GROUP BY a_u.artiste_id
            HAVING a_u.artiste_id = alb.artiste_id) AS seguidores
    FROM
        SpotifyClone.albums AS alb
    ORDER BY seguidores DESC , artista , album;


