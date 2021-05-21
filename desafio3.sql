CREATE VIEW historico_reproducao_usuarios AS
    SELECT 
        US.usuario_nome AS usuario, CA.cancao_nome AS nome
    FROM
        SpotifyClone.historico AS HI
            INNER JOIN
        SpotifyClone.usuario AS US ON HI.usuario_id = US.usuario_id
            INNER JOIN
        SpotifyClone.cancoes AS CA ON HI.cancao_id = CA.cancao_id
    ORDER BY usuario , nome;
