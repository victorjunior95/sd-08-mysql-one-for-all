CREATE VIEW perfil_artistas AS
    SELECT 
        ar.artist AS 'artista',
        al.album AS 'album',
        COUNT(fa.user_id) AS 'seguidores'
    FROM
        SpotifyClone.albums AS al
            INNER JOIN
        SpotifyClone.artists AS ar ON al.artist_id = ar.artist_id
            INNER JOIN
        SpotifyClone.following_artists AS fa ON ar.artist_id = fa.artist_id
    GROUP BY `artista` , `album`
    ORDER BY `seguidores` DESC , `artista` , `album`;
