CREATE VIEW cancoes_premium AS
    SELECT
        M.nome_musica AS 'nome',
        COUNT(H.usuario_ID) AS 'reproducoes'
    FROM
        SpotifyClone.musica AS M
            INNER JOIN
        SpotifyClone.historico_reproducoes AS H ON M.musica_ID = H.musica_ID
            INNER JOIN
        SpotifyClone.usuario AS U ON U.usuario_ID = H.usuario_ID
    WHERE
        U.plano_ID IN (2 , 3)
    GROUP BY M.nome_musica
    ORDER BY M.nome_musica;
