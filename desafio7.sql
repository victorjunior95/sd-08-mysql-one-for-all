CREATE VIEW perfil_artistas AS
SELECT 
    a.nome 'artista', al.nome 'album', COUNT(al.id) 'seguidores'
FROM
    SpotifyClone.artistas a
        INNER JOIN
    SpotifyClone.albuns al ON al.artista_id = a.id
        INNER JOIN
    SpotifyClone.seguidores s ON s.artista_id = a.id
GROUP BY al.id
ORDER BY seguidores DESC , artista , album;
