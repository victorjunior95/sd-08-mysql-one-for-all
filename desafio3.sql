CREATE VIEW `historico_reproducao_usuarios` AS
    SELECT 
        U.name AS 'usuario', S.song AS 'nome'
    FROM
        SpotifyClone.users U
            INNER JOIN
        SpotifyClone.played_music_history P ON U.user_id = P.user_id
            INNER JOIN
        SpotifyClone.songs S ON P.song_id = S.song_id
    ORDER BY `usuario` , `nome`;
