CREATE VIEW estatisticas_musicais AS
    SELECT 
        COUNT(DISTINCT A.cancao_id) AS 'cancoes',
        COUNT(DISTINCT B.artista_id) AS 'artistas',
        COUNT(DISTINCT B.album_id) AS 'albuns'
    FROM
        SpotifyClone.cancao A
            JOIN
        SpotifyClone.album B ON A.album_id = B.album_id;
