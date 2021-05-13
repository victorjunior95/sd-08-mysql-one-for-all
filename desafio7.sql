CREATE VIEW perfil_artistas AS
SELECT 
    artistas.nome 'artista', albuns.nome 'album', COUNT(albuns.id) 'seguidores'
FROM
    SpotifyClone.artistas
        INNER JOIN
    SpotifyClone.albuns ON albuns.artista_id = artistas.id
        INNER JOIN
    SpotifyClone.seguidores ON seguidores.artista_id = artistas.id
GROUP BY albuns.id
ORDER BY seguidores DESC , artista , album;
