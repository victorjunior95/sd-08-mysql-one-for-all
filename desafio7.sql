CREATE VIEW perfil_artistas AS
    SELECT 
        ar.artista AS 'artista', 
        al.album AS 'album', 
        COUNT(sa.artista_id) AS 'seguidores'
    FROM SpotifyClone.SegueArtistas AS sa
    INNER JOIN SpotifyClone.Artistas AS ar
    ON ar.artista_id = sa.artista_id
    INNER JOIN SpotifyClone.Albuns AS al
    ON al.artista_id = sa.artista_id
    GROUP BY al.album_id
    ORDER BY `seguidores` DESC, `artista`, `album`;
