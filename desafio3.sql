CREATE VIEW SpotifyClone.historico_reproducao_usuarios AS
    SELECT 
        U.name AS 'usuario', M.name AS 'nome'
    FROM
        SpotifyClone.users AS U
            INNER JOIN
        SpotifyClone.historic AS H ON H.user_id = U.user_id
            INNER JOIN
        SpotifyClone.musics AS M ON M.music_id = H.music_id
    ORDER BY U.name , M.name;
