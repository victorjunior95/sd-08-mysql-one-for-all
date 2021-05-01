CREATE VIEW estatisticas_musicais AS
    SELECT 
        *
    FROM
        (SELECT 
            COUNT(song_id) AS `cancoes`
        FROM
            SpotifyClone.Songs) AS `cancoes`,
        (SELECT 
            COUNT(artist_id) AS `artistas`
        FROM
            SpotifyClone.Artists) AS `artistas`,
        (SELECT 
            COUNT(album_id) AS `albuns`
        FROM
            SpotifyClone.Albuns) AS `albuns`;
