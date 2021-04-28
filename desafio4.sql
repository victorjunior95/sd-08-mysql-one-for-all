CREATE VIEW top_3_artistas AS
    SELECT 
        A.nome AS artista, COUNT(B.id_artista) AS seguidores
    FROM
        SpotifyClone.tb_artista AS A
            INNER JOIN
        SpotifyClone.seguindo_artistas AS B USING (id_artista)
    GROUP BY A.nome
    HAVING COUNT(B.id_artista) > 1
    ORDER BY seguidores DESC , artista ASC;
