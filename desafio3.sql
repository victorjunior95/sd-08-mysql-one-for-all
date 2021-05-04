CREATE VIEW historico_reproducao_usuarios AS
    SELECT 
        u.nome AS 'usuario', m.nome AS 'nome'
    FROM
        SpotifyClone.usuarios AS u
            INNER JOIN
        SpotifyClone.historico AS h ON u.id = h.usuario_id
            INNER JOIN
        SpotifyClone.musicas AS m ON h.musica_id = m.id
    ORDER BY u.nome , m.nome;
