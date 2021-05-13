CREATE VIEW faturamento_atual AS
    SELECT 
        ROUND(MIN(planos.valor), 2) faturamento_minimo,
        ROUND(MAX(planos.valor), 2) faturamento_maximo,
        ROUND(SUM(planos.valor) / 4, 2) faturamento_medio,
        ROUND(SUM(planos.valor), 2) faturamento_total
    FROM
        SpotifyClone.usuarios
            INNER JOIN
        SpotifyClone.planos ON usuarios.plano_id = planos.id
