CREATE VIEW perfil_artistas AS
    SELECT
        A.nome_artista AS 'artista',
        B.nome_album AS 'album',
        COUNT(C.usuario_ID) AS 'seguidores'
    FROM
        SpotifyClone.artista AS A
            INNER JOIN
        SpotifyClone.album AS B ON A.artista_ID = B.artista_ID
            INNER JOIN
        SpotifyClone.artista_seguido AS C ON C.artista_ID = A.artista_ID
    GROUP BY A.nome_artista , B.nome_album
    ORDER BY `seguidores` DESC , `artista` , `album`;
