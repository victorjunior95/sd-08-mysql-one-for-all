CREATE VIEW estatisticas_musicais AS
    SELECT 
        COUNT(A.nome) AS cancoes,
        COUNT(DISTINCT C.id_artista) AS artistas,
        COUNT(DISTINCT B.id_album) AS albuns
    FROM
        tb_cancao AS A
            INNER JOIN
        tb_album AS B USING (id_album)
            INNER JOIN
        tb_artista AS C USING (id_artista);

