CREATE VIEW historico_reproducao_usuarios AS
    SELECT 
        (SELECT 
                u.user_name
            FROM
                SpotifyClone.users AS u
            WHERE
                u.user_id = h.user_id) AS usuario,
        (SELECT 
                m.music_name
            FROM
                SpotifyClone.musics AS m
            WHERE
                m.music_id = h.music_id) AS nome
    FROM
        SpotifyClone.historic AS h
    ORDER BY usuario , nome;
