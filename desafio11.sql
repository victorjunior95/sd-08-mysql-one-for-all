CREATE VIEW cancoes_premium AS
    SELECT 
        c.cancao AS 'nome',
        COUNT(hr.cancao_id) AS 'reproducoes'
    FROM SpotifyClone.Cancoes AS c
    INNER JOIN SpotifyClone.HistoricoReproducao AS hr
    ON c.cancao_id = hr.cancao_id
    INNER JOIN SpotifyClone.Usuarios AS u
    ON u.usuario_id = hr.usuario_id AND (u.plano_id = 2 OR u.plano_id = 3)
    GROUP BY c.cancao_id
    ORDER BY `nome`;
    