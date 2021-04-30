CREATE VIEW estatisticas_musicais AS
    SELECT 
        COUNT(musica_id) AS 'cancoes',
        COUNT(DISTINCT a.artista_id) AS 'artistas',
        COUNT(DISTINCT al.album_id) AS 'albuns'
    FROM
        SpotifyClone.artista a
            INNER JOIN
        SpotifyClone.album al ON a.artista_id = al.artista_id
            INNER JOIN
        SpotifyClone.musica m ON m.album_id = al.album_id;
        