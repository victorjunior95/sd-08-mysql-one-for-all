CREATE VIEW SpotifyClone.perfil_artistas AS
    SELECT 
        ART.name AS 'artista',
        A.name AS 'album',
        COUNT(*) AS 'seguidores'
    FROM
        SpotifyClone.artists AS ART
            INNER JOIN
        SpotifyClone.albums AS A ON A.artist_id = ART.artist_id
            INNER JOIN
        SpotifyClone.following AS F ON F.artist_id = ART.artist_id
    GROUP BY artista , album
    ORDER BY seguidores DESC , artista , album;
