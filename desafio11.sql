CREATE VIEW SpotifyClone.cancoes_premium AS
    SELECT 
        M.name AS 'nome', COUNT(*) AS 'reproducoes'
    FROM
        SpotifyClone.musics AS M
            INNER JOIN
        SpotifyClone.historic AS H ON H.music_id = M.music_id
            INNER JOIN
        SpotifyClone.users AS U ON U.user_id = H.user_id
    WHERE
        U.plan_id BETWEEN '2' AND '3'
    GROUP BY nome
    ORDER BY nome;
