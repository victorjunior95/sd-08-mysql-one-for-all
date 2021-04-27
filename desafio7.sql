CREATE VIEW perfil_artistas AS
    SELECT 
        B.nome AS 'artista',
        A.nome AS 'album',
        COUNT(C.seguindo_artista_id) AS `seguidores`
    FROM
        SpotifyClone.album A
            JOIN
        SpotifyClone.artista B ON A.artista_id = B.artista_id
            JOIN
        SpotifyClone.seguindo_artista C ON A.artista_id = C.artista_id
    GROUP BY B.nome , A.nome
    ORDER BY `seguidores` DESC , B.nome , A.nome;
