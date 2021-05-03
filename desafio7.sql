CREATE VIEW perfil_artistas AS 
SELECT 
    a.artista_nome AS artista,
    alb.album_nome AS album,
    count(*) AS seguidores
FROM
    SpotifyClone.artistas a
        INNER JOIN
    SpotifyClone.albuns alb ON alb.artista_id = a.artista_id
        INNER JOIN
    SpotifyClone.usariosSeguidores u ON u.artista_id = a.artista_id
    GROUP BY alb.album_id
ORDER BY seguidores DESC , artista , album
;
