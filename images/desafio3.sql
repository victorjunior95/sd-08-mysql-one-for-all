CREATE VIEW historico_reproducao_usuarios AS
    SELECT 
        U.user_name AS `usuario`, S.song_name AS `nome`
    FROM
        playlist_history AS P
            INNER JOIN
        user AS U ON U.user_id = P.user_id
            INNER JOIN
        song AS S ON S.song_id = P.song_id
        