CREATE VIEW faturamento_atual AS
    SELECT 
        ROUND(MIN(p.valor), 2) faturamento_minimo,
        ROUND(MAX(p.valor), 2) faturamento_maximo,
        ROUND(SUM(p.valor) / 4, 2) faturamento_medio,
        ROUND(SUM(p.valor), 2) faturamento_total
    FROM
        SpotifyClone.planos p
    WHERE
        EXISTS( SELECT 
                *
            FROM
                SpotifyClone.usuarios u
            WHERE
                u.plano_id = p.id);
