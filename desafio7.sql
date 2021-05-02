CREATE VIEW perfil_artistas AS
    SELECT 
        ar.artist_name AS `artista`,
        al.album_name AS `album`,
        COUNT(f.artist_id) AS `seguidores`
    FROM
        SpotifyClone.Artists AS ar
            INNER JOIN
        SpotifyClone.Albuns AS al ON ar.artist_id = al.artist_id
            INNER JOIN
        SpotifyClone.Followers AS f ON ar.artist_id = f.artist_id
    GROUP BY al.album_id
    ORDER BY `seguidores` DESC , `artista` , `album`;
