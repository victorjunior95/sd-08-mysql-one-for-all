-- consultei o repositorio de arnaelcio
-- https://github.com/tryber/sd-08-mysql-one-for-all/blob/65480a31863f87fb24c5dedd1c98659c17420ecc/desafio1.sql
CREATE VIEW cancoes_premium AS 
    SELECT 
        musicas.nome AS 'nome', 1 AS 'reproducoes'
    FROM
        musicas
            INNER JOIN
        historico ON historico.musica_id = musicas.id
            INNER JOIN
        usuarios ON historico.usuario_id = usuarios.id
            INNER JOIN
        planos ON planos.id = usuarios.plano_id
    WHERE
        planos.nome IN ('familiar' , 'universitário')
        -- cada canção foi tocada por pessoas usuárias do plano familiar ou universitário, 
    GROUP BY musicas.nome
    -- Seus resultados devem estar agrupados pelo nome da canção e ordenados em ordem alfabética.
    ORDER BY nome;
