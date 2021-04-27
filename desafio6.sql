CREATE VIEW faturamento_atual AS
SELECT 
    MIN(valor_plano) faturamento_minimo,
    MAX(valor_plano) faturamento_maximo,
    ROUND(AVG(valor_plano), 2) faturamento_medio,
    SUM(valor_plano) faturamento_total
FROM
    SpotifyClone.Plano p
        INNER JOIN
    SpotifyClone.Usuario u ON p.plano_id = u.plano_id;
