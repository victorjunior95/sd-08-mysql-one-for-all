CREATE VIEW estatisticas_musicais AS
    SELECT 
        COUNT(m.music_id) AS cancoes,
        (SELECT 
                COUNT(a.artiste_id)
            FROM
                SpotifyClone.artiste AS a) AS artistas,
        (SELECT 
                COUNT(alb.album_id)
            FROM
                SpotifyClone.albums AS alb) AS albuns
    FROM
        SpotifyClone.musics AS m;
