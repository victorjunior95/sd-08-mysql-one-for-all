-- consultei o repositorio de arnaelcio
-- https://github.com/tryber/sd-08-mysql-one-for-all/blob/65480a31863f87fb24c5dedd1c98659c17420ecc/desafio1.sql
CREATE VIEW historico_reproducao_usuarios AS
    SELECT 
        usuarios.nome AS 'usuario', musicas.nome AS 'nome'
    FROM
        SpotifyClone.usuarios
            INNER JOIN
        SpotifyClone.historico ON usuarios.id = historico.usuario_id
            INNER JOIN
        SpotifyClone.musicas ON historico.musica_id = musicas.id
    ORDER BY usuarios.nome , musicas.nome;
