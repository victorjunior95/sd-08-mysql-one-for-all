CREATE VIEW historico_reproducao_usuarios
    SELECT 
        usuarios.nome AS 'usuario', musicas.nome AS 'nome'
    FROM
        SpotifyClone.usuarios
            INNER JOIN
        SpotifyClone.historico ON usuarios.id = historico.usuario_id
            INNER JOIN
        SpotifyClone.musicas ON historico.musica_id = musicas.id
    ORDER BY usuarios.nome , musicas.nome;
    