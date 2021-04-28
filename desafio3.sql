CREATE OR REPLACE VIEW historico_reproducao_usuarios AS
    SELECT 
        u.username AS `usuario`, s.title AS `nome`
    FROM
        SpotifyClone.users AS u
            INNER JOIN
        SpotifyClone.songs AS s
            INNER JOIN
        SpotifyClone.reproductions_history AS rh ON rh.song_id = s.song_id
            AND rh.user_id = u.user_id
    ORDER BY `usuario` , `nome`;
