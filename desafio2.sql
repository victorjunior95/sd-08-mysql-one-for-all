CREATE VIEW estatisticas_musicais AS
    SELECT 
        COUNT(cancao_id) AS cancoes,
        COUNT(DISTINCT (a.artista_id)) AS artistas,
        COUNT(DISTINCT (c.album_id)) AS albuns
    FROM
        SpotifyClone.Cancoes c
            INNER JOIN
        SpotifyClone.Album a ON c.album_id = a.album_id;
