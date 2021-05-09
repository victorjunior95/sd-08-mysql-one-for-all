CREATE VIEW top_3_artistas AS
    SELECT 
    (SELECT 
            artistas.nome
        FROM
            SpotifyClone.artistas
        WHERE
            artistas.id = seguidores.artista_id) 'artista',
    COUNT(seguidores.usuario_id) 'seguidores'
FROM
    SpotifyClone.seguidores
GROUP BY `artista`
ORDER BY `seguidores` DESC , `artista`
LIMIT 3;
