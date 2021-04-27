CREATE VIEW historico_reproducao_usuarios AS
    SELECT 
        usuario, titulo nome
    FROM
        SpotifyClone.Usuario u
            INNER JOIN
        SpotifyClone.Historico h ON h.user_id = u.user_id
            LEFT JOIN
        SpotifyClone.Cancoes c ON c.cancao_id = h.cancao_id
    ORDER BY usuario , nome;
