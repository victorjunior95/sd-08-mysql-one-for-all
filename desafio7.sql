CREATE VIEW `perfil_artistas` AS
    SELECT 
        Art.artist AS 'artista', Alb.album AS 'album', S.seguidores
    FROM
        SpotifyClone.albums Alb
            INNER JOIN
        SpotifyClone.artists Art ON Alb.artist_id = Art.artist_id
            INNER JOIN
        (SELECT 
            artist_id, COUNT(*) AS 'seguidores'
        FROM
            SpotifyClone.followed_artists
        GROUP BY artist_id) AS S ON Art.artist_id = S.artist_id
    ORDER BY `seguidores` DESC , `artista` , `album`;
