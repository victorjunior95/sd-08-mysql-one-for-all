CREATE VIEW SpotifyClone.estatisticas_musicais AS
    SELECT 
        COUNT(DISTINCT M.music_id) AS 'cancoes',
        COUNT(DISTINCT ART.artist_id) AS 'artistas',
        COUNT(DISTINCT A.album_id) AS 'albuns'
    FROM
        SpotifyClone.musics AS M
            INNER JOIN
        SpotifyClone.albums AS A ON A.album_id = M.album_id
            INNER JOIN
        SpotifyClone.artists AS ART ON ART.artist_id = A.artist_id;
