CREATE VIEW historico_reproducao_usuarios AS
    SELECT 
        u.nome AS usuario, m.nome AS nome
    FROM
        SpotifyClone.usuarios AS u
            INNER JOIN
        SpotifyClone.historico AS h ON h.usuario_id = u.id
            INNER JOIN
        SpotifyClone.musicas AS m ON m.id = h.musica_id
    ORDER BY usuario , nome;

-- SELECT * FROM historico_reproducao_usuarios;
