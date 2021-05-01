CREATE VIEW historico_reproducao_usuarios AS
    SELECT 
        u.user_name AS `usuario`, s.song_name AS `nome`
    FROM
        SpotifyClone.Playback_History AS p
            INNER JOIN
        SpotifyClone.Users AS u ON p.user_id = u.user_id
            INNER JOIN
        SpotifyClone.Songs AS s ON p.song_id = s.song_id
    ORDER BY `usuario` , `nome`;
