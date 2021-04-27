CREATE VIEW cancoes_premium AS
    SELECT 
        D.nome AS 'nome', COUNT(A.usuario_id) AS `reproducoes`
    FROM
        SpotifyClone.usuario A
            JOIN
        SpotifyClone.plano B ON A.plano_id = B.plano_id
            JOIN
        SpotifyClone.historico_de_reproducao C ON A.usuario_id = C.usuario_id
            JOIN
        SpotifyClone.cancao D ON C.cancao_id = D.cancao_id
    WHERE
        B.nome IN ('familiar' , 'universitário')
    GROUP BY D.nome
    ORDER BY D.nome;
