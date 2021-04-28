CREATE VIEW historico_reproducao_usuarios AS
    SELECT 
        A.nome AS usuario, C.nome AS nome
    FROM
        SpotifyClone.tb_usuario AS A
            INNER JOIN
        SpotifyClone.tb_historico_reproducoes USING (id_usuario)
            INNER JOIN
        SpotifyClone.tb_cancao AS C USING (id_cancao)
    ORDER BY A.nome ASC , C.nome;
