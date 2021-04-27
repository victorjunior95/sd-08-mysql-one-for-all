CREATE VIEW top_3_artistas AS
    SELECT 
        A.nome AS 'artista',
        COUNT(B.seguindo_artista_id) AS `seguidores`
    FROM
        SpotifyClone.artista A
            JOIN
        SpotifyClone.seguindo_artista B ON A.artista_id = B.artista_id
    GROUP BY A.nome
    ORDER BY `seguidores` DESC , A.nome
    LIMIT 3;
