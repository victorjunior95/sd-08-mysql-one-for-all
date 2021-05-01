CREATE VIEW historico_reproducao_usuarios AS
    SELECT 
        u.usuario_nome AS usuario, c.cancao_nome AS nome
    FROM
        SpotifyClone.usuarios AS u,
        SpotifyClone.cancoes AS c,
        SpotifyClone.usuario_cancao AS h
    WHERE
        u.usuario_id = h.usuario_id
            AND c.cancao_id = h.cancao_id
    ORDER BY `usuario` , `nome`;
