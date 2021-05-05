CREATE VIEW cancoes_premium AS
    SELECT 
        m.nome 'nome', COUNT(h.musica_id) 'reproducoes'
    FROM
        musicas m
            INNER JOIN
        historico h ON h.musica_id = m.id
            INNER JOIN
        usuarios u ON h.usuario_id = u.id
            INNER JOIN
        planos p ON p.id = u.plano_id
    WHERE
        p.nome IN ('familiar' , 'universitário')
    GROUP BY m.nome
    ORDER BY nome;
