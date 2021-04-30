CREATE VIEW top_3_artistas AS
    SELECT ar.artista AS 'artista', COUNT(sa.artista_id) AS 'seguidores'
    FROM SpotifyClone.Artistas AS ar
    INNER JOIN SpotifyClone.SegueArtistas AS sa
    ON sa.artista_id = ar.artista_id
    GROUP BY ar.artista_id
    ORDER BY `seguidores` DESC, `artista`
    LIMIT 3;
