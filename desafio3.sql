CREATE VIEW historico_reproducao_usuarios AS
    SELECT 
        nome AS usuario, titulo AS nome
    FROM
        SpotifyClone.historico h
            INNER JOIN
        SpotifyClone.usuario u ON u.usuario_id = h.usuario_id
            INNER JOIN
        SpotifyClone.musica m ON m.musica_id = h.musica_id
    ORDER BY 1 , 2;
    