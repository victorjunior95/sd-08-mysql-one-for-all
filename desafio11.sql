CREATE VIEW cancoes_premium AS
    SELECT 
        m.nome AS nome, COUNT(h.musica_id) AS reproducoes
    FROM
        SpotifyClone.musicas AS m
            INNER JOIN
        SpotifyClone.historico AS h ON h.musica_id = m.id
            INNER JOIN
        SpotifyClone.usuarios AS u ON u.id = h.usuario_id
            INNER JOIN
        SpotifyClone.planos AS p ON p.id = u.plano_id
    WHERE
        u.plano_id <> 1
    GROUP BY nome
    ORDER BY nome;

-- SELECT * FROM cancoes_premium;
