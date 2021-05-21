CREATE VIEW faturamento_atual AS
    SELECT 
        (SELECT 
                MIN(valor_plano)
            FROM
                SpotifyClone.plano) AS faturamento_minimo,
        (SELECT 
                MAX(valor_plano)
            FROM
                SpotifyClone.plano) AS faturamento_maximo,
        (SELECT 
                ROUND(AVG(PL.valor_plano), 2)
            FROM
                SpotifyClone.plano AS PL
                    INNER JOIN
                SpotifyClone.usuario AS US ON PL.plano_id = US.plano_id) AS faturamento_medio,
        (SELECT 
                SUM(valor_plano)
            FROM
                SpotifyClone.plano) AS faturamento_total;
