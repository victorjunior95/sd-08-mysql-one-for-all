CREATE VIEW cancoes_premium AS
    SELECT 
        titulo nome, COUNT(c.cancao_id) reproducoes
    FROM
        SpotifyClone.Usuario u
            INNER JOIN
        Historico h ON u.user_id = h.user_id
            INNER JOIN
        Cancoes c ON h.cancao_id = c.cancao_id
    WHERE
        plano_id IN (2 , 3)
    GROUP BY nome
    ORDER BY nome;
