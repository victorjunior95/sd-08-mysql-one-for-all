CREATE VIEW historico_reproducao_usuarios AS
SELECT 
    u.usuario_nome AS 'usuario', m.musica_nome AS 'nome'
FROM
    SpotifyClone.historicoReproducao hr
        INNER JOIN
    SpotifyClone.musicas m ON hr.musica_id = m.musica_id
        INNER JOIN
    SpotifyClone.usuarios u ON hr.usuario_id = u.usuario_id
ORDER BY u.usuario_nome , m.musica_nome;
