CREATE VIEW perfil_artistas AS
    SELECT 
        A.nome AS artista,
        B.nome AS album,
        COUNT(C.id_artista) AS seguidores
    FROM
        SpotifyClone.tb_artista AS A
            INNER JOIN
        tb_album AS B USING (id_artista)
            INNER JOIN
        SpotifyClone.seguindo_artistas AS C USING (id_artista)
    GROUP BY A.nome , B.nome , C.id_artista
    ORDER BY seguidores DESC , artista ASC , album ASC;
