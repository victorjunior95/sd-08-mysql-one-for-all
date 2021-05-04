CREATE VIEW top_3_artistas AS
    SELECT 
        (SELECT 
                a.nome
            FROM
                SpotifyClone.artistas a
            WHERE
                a.id = s.artista_id) 'artista',
        COUNT(s.usuario_id) 'seguidores'
    FROM
        SpotifyClone.seguidores s
    GROUP BY `artista`
    LIMIT 3;
