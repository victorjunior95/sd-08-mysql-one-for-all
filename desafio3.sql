CREATE VIEW historico_reproducao_usuarios AS
    SELECT 
        u.usuario_nome AS `usuario`, c.cancao_nome AS `nome`
    FROM
        SpotifyClone.usuarios AS u
            INNER JOIN
        SpotifyClone.usuario_cancao AS uc ON u.usuario_id = uc.usuario_id
            INNER JOIN
        SpotifyClone.cancoes AS c ON uc.cancao_id = c.cancao_id
    ORDER BY usuario , nome;
